
%option noyywrap
%{
#include <stdio.h>
%}

LETRA           [a-zA-Z_]
DIGITO          [0-9]
IDENTIFICADOR   {LETRA}({LETRA}|{DIGITO})*
ENTERO          {DIGITO}+

%%
"if"|"else"|"while"|"int" {
    printf("PALABRA RESERVADA: %s\n", yytext);
}

{IDENTIFICADOR} {
    printf("IDENTIFICADOR: %s\n", yytext);
}

{ENTERO} {
    printf("NUMERO ENTERO: %s\n", yytext);
}

[ \t\r\n]+  ;

. {
    printf("NO RECONOCIDO: %s\n", yytext);
}
%%

int main()
{
    yylex();
    return 0;
}
