/* Program 1 
   Program to count the words whose length is less than 8 but greater than 3 */
%{
	#include<stdio.h>
%}
%%
[a-zA-Z0-9_ ]{3,8} { printf("Valid entry, length = %d\n",yyleng); }
. { printf("Invalid Entry\n"); } 
%%
/* In the rules section, the regex will accept entries with alphabets, numbers, underscore and even space within 3 - 8 range. 
A more firm regex is ^[\w\s]{3,8}$ */
int yywrap() {
	return 1;
}
void main() {
	yylex();
}
