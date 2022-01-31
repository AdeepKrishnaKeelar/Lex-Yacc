%{
#include "y.tab.h"
%}
%%
[aA] { return A; }
\n { return NL; }
\t
. { return yytext[0]; }
%%
int yywrap() {} 
