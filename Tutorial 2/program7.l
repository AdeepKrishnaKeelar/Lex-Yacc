/* Program 7 
   Count the number of single and multi line comments in a C program input file
*/
%{
	#include<stdio.h>
	int single_count=0, multi_line=0;
%}
%%
\/\/[^\r\n]* { single_count++; }
(\/\*)(.*\n)*.*(\*\/) { multi_line++; }
. { ; }
%%
int yywrap() {
return 1;
}
void main() {
extern FILE *yyin ,*yyout;
yyin=fopen("c-program.c","r");
yylex();
printf("Single line comments - %d \n Multi-line comments - %d\n",single_count,multi_line);
}
