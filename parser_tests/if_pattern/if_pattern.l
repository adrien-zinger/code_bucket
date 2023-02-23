%{

extern int lineNumber;
void yyerror(const char * msg);
#include "if_pattern.h"

%}

%option noyywrap

stmt S[0-9]+
expr E[0-9]+

%%

"if" {
    printf("read if\n");
    return IF;
}
"then" {
    printf("read then\n");
    return THEN;
}
"else" {
    printf("read else\n");
    return ELSE;
}

[ \t\r]         { }     /* ignore whitespaces */;

{stmt} {
    yylval = strdup(yytext);
    printf("read stmt '%s'\n", yytext);
    return STMT;
}

{expr} {
    yylval = strdup(yytext);
    printf("read expr '%s'\n", yytext);
    return EXPR;
}

%%