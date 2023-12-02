%{
 int c=0;
 int v=0;
%}
%%
[AEIOUaeiou] { v++;}
[A-Za-z] { c++;}
. ;
["\n"] { return 0; }
%%
int yywrap(){ }
int main()
{
printf("Enter the text\n:");
yylex();
printf("no of vowels%d\n",v);
printf("no of consonant %d\n",c);

}
