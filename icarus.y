%{  
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* Function declarations */
void yyerror(const char *s);
int yylex(void);

/* Simple storage for one variable */
int stored_input = 0;
%}

/* Data type for tokens */
%union {
    int intval;   // for numbers
    char* id;     // for variable names
}

/* Tokens */
%token <intval> NUMBER
%token <id> ID
%token DHOR SCAN PRINT IF ELSE WHILE FOR

/* Non-terminal types */
%type <intval> expr   /* only expr produces a value */

/* Precedence for dangling else */
%nonassoc LOWER_THAN_ELSE
%nonassoc ELSE

%%

program:
      /* empty */
    | program stmt
    ;

stmt:
      DHOR ID '=' expr '?'   {
          printf("%s = %d\n", $2, $4); // variable declaration
          stored_input = $4;
      }

    | SCAN '?' {
          printf("Enter integer: ");
          scanf("%d", &stored_input);
      }

    | PRINT expr '?' {
          printf("%d\n", $2);
      }

    | IF '(' expr ')' stmt %prec LOWER_THAN_ELSE
    | IF '(' expr ')' stmt ELSE stmt
    | WHILE '(' expr ')' stmt
    | FOR '(' expr '?' expr '?' expr ')' stmt
    | '{' program '}'
    ;

expr:
      NUMBER        { $$ = $1; }
    | ID            { $$ = stored_input; }  /* For now, only one variable */
    ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main(void) {
    printf("Starting Icarus interpreter...\n");
    yyparse();
    return 0;
}
