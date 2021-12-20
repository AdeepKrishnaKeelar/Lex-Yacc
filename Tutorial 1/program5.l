/* Program - 5
   Decimal number check, mandantory decimal part and optional whole part
*/
%{
	#include<stdio.h>
%}
%%
^[0]?[1-9]+\.[1-9]+[0]?$ { printf("This is a valid decimal number\n"); }
. { printf("Invalid entry\n"); }
%%
int yywrap() {
	return 1;
}
void main() {
	yylex();
}
