%{ 
#include<stdio.h>
%}
%token A B NL
%start S
%%
S:A A A X B B B NL{printf("Valid expression"); return 1;}
;
X:A X B
|
;
%%
int yyerror(char *msg) {
printf("Invalid");
}
int main() {
yyparse();
}
