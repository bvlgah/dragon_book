%option outfile="sql.c"
%option reentrant
%option main

%{
#include <ctype.h>

static const char *install_id(const char *name, int size);

static void str_tolower(char *str, int size);

enum TOKEN {
    SELECT,
    FROM,
    WHERE,
    ID
};
%}

letter      [a-zA-Z]
digit       [0-9]
id          {letter}{digit}*
s           (s|S)
e           (e|E)
l           (l|L)
c           (c|C)
t           (t|T)
f           (f|F)
r           (r|R)
o           (o|O)
m           (m|M)
w           (w|W)
h           (h|H)

%%

{s}{e}{l}{e}{t}                 { return SELECT; }
{f}{r}{o}{m}                    { return FROM; }
{w}{h}{e}{r}{e}                 { return WHERE; }
{id}                            { char *text = yyget_text(yyscanner);
                                  int size = yyget_leng(yyscanner);
                                  str_tolower(text, size);
                                  yyset_extra(
                                      (void *) install_id(yytext, size),
                                      yyscanner);
                                  return ID; }

%%

static const char *install_id(const char *name, int size) {
    // It does nothing currentyly.
    return (const char *) YY_NULL;
}

static void str_tolower(char *str, int size) {
    for (int i = 0; i < size; i++) {
        str[i] = (char) tolower(str[i]);
    }
}

