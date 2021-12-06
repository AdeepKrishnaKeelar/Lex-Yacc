%{
	#include<stdio.h>
	int count=0;
%}

%%
[a-zA-Z]+ { if(yyleng>3 && yyleng<8) count+=1; printf("count = %d\n ",count); }
.
%%

int yywrap() {
return 1;
}
int main() {
	yylex();
	printf("Count = %d\n",count);
	return 0;
}
