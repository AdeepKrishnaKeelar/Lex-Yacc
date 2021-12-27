%{
#include<stdio.h>
int count=0;
%}
%%
[a-zA-Z]+ { if(yyleng > count) { count = yyleng; } }
%%
int yywrap() {
return 1;
}
void main() {
extern FILE *yyin, *yyout;
yyin = fopen("some.txt","r");
yylex();
printf("Maximum size word - %d",count);
}
