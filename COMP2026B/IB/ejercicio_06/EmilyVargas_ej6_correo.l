%{
#include <stdio.h>
%}

%%
[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}   { printf("TOKEN_CORREO_VALIDO: %s\n", yytext); }
[ \t\n]+                                         { /* ignorar espacios y saltos de linea */ }
[^ \t\n]+                                        { printf("TOKEN_NO_VALIDO_O_OTRO: %s\n", yytext); }
%%

int yywrap(void) {
    return 1;
}

int main(void) {
    printf("Ingresa texto o correos (Ctrl+D para salir):\n");
    yylex();
    return 0;
}
