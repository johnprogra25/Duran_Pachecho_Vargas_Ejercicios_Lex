
%option noyywrap
%{
#include <stdio.h>
%}

/* Reglas */
%%
"<="|">="|"=="|"!=" {
    printf("OPERADOR RELACIONAL: %s\n", yytext);
}

"<"|">" {
    printf("OPERADOR RELACIONAL: %s\n", yytext);
}

"+"|"-"|"*"|"/" {
    printf("OPERADOR ARITMETICO: %s\n", yytext);
}

[ \t\r\n]+  ;

. {
    printf("NO RECONOCIDO: %s\n", yytext);
}

%%

/* Codigo principal */
int main()
{
    yylex();
    return 0;
}
