%{
#include<stdio.h>
%}
%%
[ \n\t\v\r\fA-Z] ;
. fprintf(yyout,"%s",yytext);
%%
int yywrap(){
}
int main(){
extern FILE *yyin, *yyout;
yyin=fopen("inputfile.txt","r");
yyout=fopen("output_file.txt","w");
yylex();
}
