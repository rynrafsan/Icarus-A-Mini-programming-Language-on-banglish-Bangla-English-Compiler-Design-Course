%{
#include "icarus.tab.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
%}

%%

"dhor"       { return DHOR; }
"por"        { return SCAN; }
"lekh"       { return PRINT; }
"jodi"       { return IF; }
"nahole"     { return ELSE; }
"jokhon"     { return WHILE; }
"ejonne"     { return FOR; }

[0-9]+       { yylval.intval = atoi(yytext); return NUMBER; }

[a-zA-Z][a-zA-Z0-9]* {
    yylval.id = malloc(strlen(yytext)+1);
    strcpy(yylval.id, yytext);
    return ID;
}

"("          { return '('; }
")"          { return ')'; }
"{"          { return '{'; }
"}"          { return '}'; }
"="          { return '='; }
"?"          { return '?'; }

[ \t\r\n]+   ;   /* ignore whitespace */

.            { return yytext[0]; }

%%

int yywrap(void) { return 1; }
