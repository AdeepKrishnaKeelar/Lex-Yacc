%{
	#include<stdio.h>
%}
%%
[a-z]* { printf("Lowercase alphabet - %s of length %d \n",yytext,yyleng); }
.
%%
int yywrap() {
  return 1;
}
void main() {
	yylex();
}
