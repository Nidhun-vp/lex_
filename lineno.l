%{
int c=0;
%}
%%
["\n"] { c++;printf("%d",c);}
["$"] { return 0;}
. ;
%%
int yywrap(){ }
int main(){
   printf("enter $ to end code:\n ");
   yylex();

}
