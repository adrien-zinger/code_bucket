%{
#include <stdio.h>
#include <string.h>

int yylex(void);
void yyerror(const char * msg);
extern FILE * yyin;

%}

%define api.value.type { const char * }
%token  IF THEN ELSE STMT EXPR
%start stmt
%%

stmt : matched | unmatched ;
matched : IF /* { printf("matched if resolved\n"); } */ EXPR THEN matched ELSE matched
        | STMT ;
unmatched : IF /* { printf("unmatched if resolved\n"); } */ EXPR THEN matched
          | IF /* { printf("unmatched if resolved\n"); } */ EXPR THEN matched ELSE unmatched ;

%%
void yyerror(const char * msg)
{
    printf("error: %s, %s\n", msg, yylval);
}

int main(int argc, char ** argv)
{
    if(argc>1)
        yyin = fopen(argv[1],"r"); // check result !!!
    if(!yyparse())
        printf("Success\n");
    return 0;
}