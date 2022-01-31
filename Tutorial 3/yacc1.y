%{
#include<stdio.h>
%}
%token INT
%left'+''-'
%%
Expr:E{printf("Valid Expression\n"); return 1;}
;
E:INT'-'INT
|INT'+'INT
;
%%
int yyerror(char *msg) {
printf("Invalid expression\n");
}
int main() {
yyparse();
}
