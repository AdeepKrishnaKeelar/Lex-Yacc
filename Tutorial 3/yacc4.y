%{
#include<stdio.h>
%}
%token A B NL
%start S
%%
S: A X A NL { printf("Valid"); return 1; }
;
X: B X
|
;
%%
int yyerror(char *msg) {
printf("Invalid");
}
int main() {
yyparse();
}
