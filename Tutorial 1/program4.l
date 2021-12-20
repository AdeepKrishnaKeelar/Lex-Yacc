/*  Program - 4
    Program to count the negative numbers 
 */
%{
	#include<stdio.h>
	int count=0;
%}
%%
^[\-][0]?[1-9]+$ { count+=1; printf("Valid negative number, count = %d\n",count); }
. { printf("Invalid negative number\n"); }
%%
int yywrap() {
	return 1;
}
void main() {
	yylex();
	printf("Valid negative numbers : %d",count);
}
