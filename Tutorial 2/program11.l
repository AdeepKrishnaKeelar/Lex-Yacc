/* Program - 11
   Program to find and print the longest word in the given file with its length */
%{
#include<stdio.h>
#include<stdlib.h>
int count=0;
%}
%%
[a-zA-Z]+ { printf("The word is of length - %d", yyleng); if(yyleng > count) { count = yyleng; } }
%%
int yywrap() {
return 1;
}
void main() {
yylex();
printf("The longest word is of size - %d\n", count);
}
