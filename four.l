%{
  int l=0;
  int w=0;
  int b=0;
  int c=0;
%}
%%
  ["\n"] { l++; }
  [" "]+ { b++; }
  [a-zA-Z0-9]+ { w++; c+=yyleng; }
  ["$"] {return 0;}
%%
  int yywrap(){ }
  int main(){
              printf("enter $ to end typing....\n");
              yylex();
              printf("no. of lines%d\n",l);
              printf("no. of words%d\n",w);
              printf("no. of Blanks%d\n",b);
              printf("no. of charactors%d\n",c);
  
  
  }
  



