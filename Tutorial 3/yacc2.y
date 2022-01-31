%{
#include<stdio.h>
%}
%token INT
%left'+''-'
%left'*''/'
%%
Expr:E{printf("Valid expression, value = %d",$$); return 1;}
;
E:E'*'E {$$=$1*$3; }
|E'/'E {$$=$1/$3; }
|E'-'E {$$=$1-$3; }
|E'+'E {$$=$1+$3; }
|INT
;
%%
int yyerror(char *msg) {
printf("Invalid");
}
int main() {
yyparse();
}

