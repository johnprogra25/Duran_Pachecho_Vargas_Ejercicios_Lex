%{
#include <stdio.h>
%}

%%
[a-zA-Z_][a-zA-Z0-9_]*   { printf("ELEMENTO_IDENTIFICADOR: %s\n", yytext); }
[0-9]+                   { printf("ELEMENTO_ENTERO: %s\n", yytext); }
,                        { printf("SEPARADOR_COMA\n"); }
[ \t\n]+                 { /* ignorar espacios y saltos de linea */ }
[^ \t\n,]+               { printf("ERROR: token no permitido en la lista -> '%s'\n", yytext); }
%%

int yywrap(void) {
    return 1;
}

int main(void) {
    printf("Ingresa elementos separados por comas (Ctrl+D para salir):\n");
    yylex();
    return 0;
}
