%option outfile="ws.c"
%option main

ws  [ \t\r\n]

%%
{ws}+   fprintf(yyout, " ");

