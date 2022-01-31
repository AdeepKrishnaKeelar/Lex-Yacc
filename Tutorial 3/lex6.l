%{
#include "y.tab.h"
%}
%%
[0] { return A; }
[1] { return B; }
[2] { return C; }
\n { return NL; }
\t
. { return yytext[0]; }
%%
int yywrap() { }
