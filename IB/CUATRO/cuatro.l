%{
#include <stdlib.h>
%}

%%
[0-9]+ printf("NUMERO \n");
(\+|-)?[0-9]+(\.[0-9]+)?((E|e)(\+|-)?[0-9]+)? printf("REAL \n");
[a-zA-Z][a-zA-Z0-9]* printf("IDENTIFICADOR \n");
[ \t\n]+ ;
. ;
%%
