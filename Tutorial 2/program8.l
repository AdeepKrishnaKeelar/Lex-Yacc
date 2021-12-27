/* Program - 8 
   Program to copy a C program without any comments */
%{
#include<stdio.h>
#include<stdlib.h>

%}


%%

"//".*             {;}

\/\*(.*\n)*.*\*\/  {;}

[. \n] {fprintf(yyout,"%s",yytext);}
 
%%

int yywrap(){
    return 1;
}


int main(){
    extern FILE *yyin,*yyout;
    yyin=fopen("c-program.c","r");
    yyout=fopen("out.txt","w");
    yylex();
    return 0;
}
