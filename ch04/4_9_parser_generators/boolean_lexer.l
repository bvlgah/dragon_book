%{
#include <stdio.h>
#include "boolean_parser.h"
%}

%option outfile="boolean_lexer.c" header-file="boolean_lexer.h"
%option reentrant noyywrap
%option bison-bridge

%%

[ \t]*      { continue; }
"and"       { return TOKEN_AND; }
"or"        { return TOKEN_OR; }
"not"       { return TOKEN_NOT; }
"("         { return TOKEN_LPAREN; }
")"         { return TOKEN_RPAREN; }
"true"      { return TOKEN_TRUE; }
"false"     { return TOKEN_FALSE; }
[\r\n]+     { return TOKEN_NEWLINE; }
.           { return yytext[0]; }

%%

