
%{

%}
 l [a-zA-z_]
 d [0-9]
%%
 {l}({l}|{d})*  printf("Valid identifier");
 .*   printf("INvalid identifier");
%%
 int yywrap(){ }
 
 int main(){
	   printf("Identifier: ");
	   yylex();
	   }
	   
	   /*
%{
%}

letter [a-zA-Z]
digit [0-9]

%%
{letter}({letter}|{digit})*   printf("Valid identifier");
.*   printf("Invalid identifier");
%%

int yywrap() { }

int main() {
    printf("Identifier:");
    yylex();
}
*/
