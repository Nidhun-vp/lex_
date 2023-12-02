/*%{
int c=0;
%}
%%
  "\n" { c++; }
  "$" { return 0; }
  .  ;
%%
yywrap(){ }
int main()
        {
          printf("enter $ to end code\n");
           yylex();
           printf("\nno of lines:%d\n",c);
        }
*/

%{
int c = 0;
%}

%%
"\n" { c++; }
"$"  { return 0; }
.    ;
%%

yywrap() { }

int main()
{
    printf("Enter $ to end code\n");
    yylex();
    printf("\nNumber of lines: %d\n", c);
}
