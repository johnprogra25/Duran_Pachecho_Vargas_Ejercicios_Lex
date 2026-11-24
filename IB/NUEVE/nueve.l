
%option noyywrap
%{
#include <stdio.h>

int contador[10] = {0};
%}

%%
[0-9] {
    contador[yytext[0] - '0']++;
}

.|\n {
    /* Ignorar caracteres que no son dígitos */
}
%%

int main()
{
    yylex();

    printf("DIGITO | FRECUENCIA\n");
    printf("-------------------\n");

    for (int i = 0; i < 10; i++) {
        printf("   %d   |     %d\n", i, contador[i]);
    }

    return 0;
}
