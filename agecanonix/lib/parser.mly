%token PIPE
%token AND
%token SEMICOLON
%token LEFT_PARENTESIS
%token RIGHT_PARENTESIS
%token INF
%token SUP
%token DOUBLE_PIPE
%token DOUBLE_AND
%token DOUBLE_SEMICOLON
%token SEMICOLON_AND
%token DOUBLE_SEMICOLON_AND
%token PIPE_AND
%token EXCLAMATION
%token CASE
%token COPROC
%token DO
%token DONE
%token ELIF
%token ELSE
%token ESAC
%token FI
%token FOR
%token FUNCTION
%token IF
%token IN
%token SELECT
%token THEN
%token UNTIL
%token WHILE
%token LEFT_BRACE
%token RIGHT_BRACE
%token TIME
%token LEFT_BRACK
%token RIGHT_BRACK
%token <string> WORD
%token EOF
%start <Vals.value option> prog
%%

prog:
  | v = value { Some v }
  | EOF       { None   } ;

value:
  | word = WORD                 { `Token word }
  | PIPE                        { `Token "PIPE" }
  | AND                         { `Token "AND" }
  | SEMICOLON                   { `Token "SEMICOLON" }
  | LEFT_PARENTESIS             { `Token "LEFT_PARENTESIS" }
  | RIGHT_PARENTESIS            { `Token "RIGHT_PARENTESIS" }
  | INF                         { `Token "INF" }
  | SUP                         { `Token "SUP" }
  | DOUBLE_PIPE                 { `Token "DOUBLE_PIPE" }
  | DOUBLE_AND                  { `Token "DOUBLE_AND" }
  | DOUBLE_SEMICOLON            { `Token "DOUBLE_SEMICOLON" }
  | SEMICOLON_AND               { `Token "SEMICOLON_AND" }
  | DOUBLE_SEMICOLON_AND        { `Token "DOUBLE_SEMICOLON_AND" }
  | PIPE_AND                    { `Token "PIPE_AND" }
  | EXCLAMATION                 { `Token "EXCLAMATION" }
  | CASE                        { `Token "CASE" }
  | COPROC                      { `Token "COPROC" }
  | DO                          { `Token "DO" }
  | DONE                        { `Token "DONE" }
  | ELIF                        { `Token "ELIF" }
  | ELSE                        { `Token "ELSE" }
  | ESAC                        { `Token "ESAC" }
  | FI                          { `Token "FI" }
  | FOR                         { `Token "FOR" }
  | FUNCTION                    { `Token "FUNCTION" }
  | IF                          { `Token "IF" }
  | IN                          { `Token "IN" }
  | SELECT                      { `Token "SELECT" }
  | THEN                        { `Token "THEN" }
  | UNTIL                       { `Token "UNTIL" }
  | WHILE                       { `Token "WHILE" }
  | LEFT_BRACE                  { `Token "LEFT_BRACE" }
  | RIGHT_BRACE                 { `Token "RIGHT_BRACE" }
  | TIME                        { `Token "TIME" }
  | LEFT_BRACK                  { `Token "LEFT_BRACK" }
  | RIGHT_BRACK                 { `Token "RIGHT_BRACK" }
