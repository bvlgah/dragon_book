%{

#include <stdio.h>

#include "boolean_parser.h"
#include "boolean_lexer.h"

void yyerror(yyscan_t scanner, char const *msg);

%}

%output     "boolean_parser.c"
%defines    "boolean_parser.h"

%code requires {
    typedef void* yyscan_t;
}

%define api.pure
%lex-param   { yyscan_t scanner }
%parse-param { yyscan_t scanner }

%token TOKEN_OR         "or"
%token TOKEN_AND        "and"
%token TOKEN_NOT        "not"
%token TOKEN_LPAREN     "("
%token TOKEN_RPAREN     ")"
%token TOKEN_TRUE       "true"
%token TOKEN_FALSE      "false"
%token TOKEN_NEWLINE

%%

lines
    : bexpr                         { printf("%s\n", $1 ? "true" : "false"); }
    //: lines bexpr TOKEN_NEWLINE     { printf("%s\n", $2 ? "true" : "false"); }
    //| lines TOKEN_NEWLINE
    //|
    ;

bexpr
    : bexpr "or" bterm              { $$ = $1 || $3; }
    | bterm
    ;

bterm
    : bterm "and" bfactor           { $$ = $1 && $3; }
    | bfactor                       { $$ = $1; }
    ;

bfactor
    : "not" bfactor                 { $$ = !$2; }
    | "(" bexpr ")"                 { $$ = $2; }
    | "true"                        { $$ = 1; }
    | "false"                       { $$ = 0; }
    ;

%%

void yyerror(yyscan_t scanner, char const *msg) {
    fprintf(stderr, "%s\n", msg);
}

