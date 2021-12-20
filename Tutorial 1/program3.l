/* Program - 3
Identify valid identifiers in C  
*/
%{ 
	#include<stdio.h>
%}
%%
[a-zA-Z_][a-zA-Z0-9_]{1,31} { printf("Valid identifier\n"); }
([int|float|char|double|goto|switch|if|else]|.) { printf("Invalid\n"); }
%%
int yywrap() {
	return 1;
}
void main() {
	yylex();
}
