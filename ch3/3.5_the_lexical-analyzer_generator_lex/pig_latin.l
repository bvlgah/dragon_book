%option outfile="pig_latin.c"
%option main

letter          [a-zA-Z]
vowel           [aAeEiIoOuU]
consonant       [a-zA-tZ]{-}[aeiouAEIOU]

%{
static void output_vowel_word(void);

static void output_con_word(void);
%}

%%
{consonant}{letter}*    { output_con_word(); }
{vowel}{letter}*        { output_vowel_word(); }
%%

static void output_vowel_word(void) {
    fprintf(yyout, "%say", yyget_text());
}

static void output_con_word(void) {
    fprintf(yyout, "%s%cay", yyget_text() + 1, *yyget_text());
}

