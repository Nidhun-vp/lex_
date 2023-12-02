%{

%}
%%
[""];
[a-zA-Z0-9]+ {printf("length of word %s=%d\n",yytext,yyleng);}
["$"] {return 0;}
%%
int yywrap(){ }
int main(){
   printf("enter to $ stop typing..\n");
   yylex();

  
}
