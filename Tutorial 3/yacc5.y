%{
#include<stdio.h>
%}
%token A NL
%start S
%%
S:X NL { printf("Valid"); return 1; }
;
X: X A A
| A A
;
%%
int yyerror(char *msg) {
printf("Invalid");
}
int main() {
yyparse();
}
