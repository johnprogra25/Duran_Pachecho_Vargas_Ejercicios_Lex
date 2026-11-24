%{
#include <stdio.h>

int binario_a_decimal(const char *s) {
    int valor = 0;
    for (int i = 0; s[i] != '\0'; i++) {
        valor = valor * 2 + (s[i] - '0');
    }
    return valor;
}
%}

%%
[01]+           { printf("BINARIO: %s -> DECIMAL: %d\n", yytext, binario_a_decimal(yytext)); }
[ \t\n]+        { /* ignorar espacios y saltos de linea */ }
.               { printf("OTRO: %s\n", yytext); }
%%

int yywrap(void) {
    return 1;
}

int main(void) {
    printf("Ingresa numeros binarios (Ctrl+D para salir):\n");
    yylex();
    return 0;
}
