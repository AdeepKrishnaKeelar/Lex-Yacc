%{
#include<stdio.h>
%}
%token A B NL C
%start S
%%
S: B X B NL { printf("Valid"); return 1; }
;
X: B X B 
 | A X A
 | C
;
%%
int yyerror(char *msg) {
printf("Invalid");
}
int main(void) {
yyparse();
}
