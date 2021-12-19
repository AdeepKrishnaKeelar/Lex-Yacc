/* Program 2
   Program to identify alphabets, numbers and special characters */
%{
	#include<stdio.h>
	int alpha=0;
	int numb=0;
	int spec=0;
	int space=0;
%} 
%%
[a-zA-Z] { alpha +=1; }
[0-9] { numb+=1; }
[@#\*\^\?\.\*\+-] { spec+=1; }
[ \n\t] { space +=1; }
%%
/* Alphabets, Numbers, special characters and spaces including newlines are considered.*/
int yywrap() {
	return 1;
}
void main() {
	yylex();
	printf("Alphabets = %d\nNumbers = %d\nSpecial Characters = %d\nSpace Tabs = %d\n",alpha,numb,spec,space);
}
