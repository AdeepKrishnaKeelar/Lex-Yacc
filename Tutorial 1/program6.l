/* Program - 6
   Identify binary numbers, whole part should not start with zero except 0, decimal part should not end with 0
*/
%{
	#include<stdio.h>
%}
%%
^([^0][0-1]+|0)(\.([1]+))?$ { printf("Valid binary number\n"); }
. { printf("Invalid binary number\n"); }
%%
int yywrap() {
	return 1;
}
void main() {
	yylex();
}
