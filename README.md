# Icarus-A-Mini-programming-Language-on-banglish-Bangla-English-Compiler-Design-Course


This project seeks to develop a simple interpreter for a miniature programming language using Flex and Bison. The language supports features like variable declarations, arithmetic operations, control structures (such as if-else and loops), and basic input/output. It offers hands-on experience with essential compiler design concepts, including lexical analysis, syntax analysis, parsing, and symbol table handling.

Objectives:
Define Language Syntax and Semantics: Create clear and concise rules for statements, expressions, and control flow structures.
Lexical Analysis with Flex: Develop a lexer to tokenize the source code into components like keywords, identifiers, operators, and numbers.
Syntax Analysis with Bison: Implement grammar rules to parse token sequences and generate a parse tree.
Symbol Table Management: Maintain variable information, ensure proper declarations, and handle type checking.
Interpretation or Output Generation: Execute the parsed code or produce the appropriate output.
Basic Error Handling: Identify and report syntax and semantic errors during compilation or interpretation.

Scope:
Data Types: Support integer variables.
Operators: Implement arithmetic (+, -, *, /, %), assignment (=), comparisons (==, !=, <, >, <=, >=).
Control Structures: Parse and execute jodi, nahole, jokhon, and ejonne statements.
Input/Output: Support por() for input and lekh() for output.
Comments: Single-line comments with **.
Variable Features: Declaration, assignment, and use in expressions, with enforcement of declaration-before-use.



Tools and Technologies:
Flex: Generates the lexical analyzer (tokenizer).
Bison: Generates the parser (syntax analyzer, grammar rules).
C/C++: Main implementation language interfacing with generated parsers.
GCC: Compiles and links the project components.
