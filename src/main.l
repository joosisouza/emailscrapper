
%{
#include <stdio.h>
%}


%%
[0-9A-Za-z\-._]+[0-9A-Za-z][@][0-9A-Za-z\-._]+[0-9A-Za-z][-] ;

[0-9A-Za-z\-._]+[0-9A-Za-z][@][0-9A-Za-z\-._]*[0-9A-Za-z] {
  printf("%s\n", yytext);
}

. ;
[[:space:]] ;

%%

int main() {
  yylex();
  return 0;
}
