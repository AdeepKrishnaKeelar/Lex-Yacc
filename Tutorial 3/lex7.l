%{
#include "y.tab.h"
%}
%%
[aA] { return A; }
[bB] { return B; }
[cC] { return C; }
\n { return NL; }
\t 
. { return yytext[0]; }
%%
int yywrap() { }
