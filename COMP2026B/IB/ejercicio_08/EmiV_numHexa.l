%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
0[xX][0-9a-fA-F]+   {
                        long decimal = strtol(yytext, NULL, 16);
                        printf("HEXADECIMAL: %s -> DECIMAL: %ld\n", yytext, decimal);
                    }
[ \t\n]+            { /* ignorar espacios y saltos de linea */ }
.                   { printf("OTRO: %s\n", yytext); }
%%

int yywrap(void) {
    return 1;
}

int main(void) {
    printf("Ingresa numeros hexadecimales tipo 0x1A3F (Ctrl+D para salir):\n");
    yylex();
    return 0;
}
