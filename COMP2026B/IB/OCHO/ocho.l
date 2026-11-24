
%option noyywrap
%{
#include <stdio.h>
#include <ctype.h>
%}

%%
[A-Z]+ {
    for (int i = 0; i < yyleng; i++)
        putchar(tolower((unsigned char)yytext[i]));
}

.|\n {
    ECHO;
}
%%

int main()
{
    yylex();
    return 0;
}
