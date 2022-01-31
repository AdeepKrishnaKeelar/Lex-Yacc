%{
#include<stdio.h>
%}
%token A B C NL
%start S
%%
S: X Y NL { printf("Valid"); return 1; }
;
X: A X B 
 | A B
;
Y: Y C
 | C C
;
%%
int yyerror(char *msg) {
printf("Invalid");
}
int main() {
yyparse();
}
