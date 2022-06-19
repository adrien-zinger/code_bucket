%token IF
%token THEN
%token ELSE
%token ELIF
%token FI
%token DO
%token DONE
%token CASE
%token ESAC
%token WHILE
%token UNTIL
%token FOR
%token LBRACE
%token RBRACE
%token BANG
%token IN
%token AND_IF
%token OR_IF
%token DSEMI
%token DLESS
%token DGREAT
%token LESSAND
%token LESS
%token GREATAND
%token GREAT
%token LESSGREAT
%token DLESSDASH
%token CLOBBER
%token PIPE
%token LPAR
%token RPAR
%token AND
%token SEMI
%token NEWLINE
%token <string> IO_NUMBER
%token <string> ASSIGNMENT_WORD
%token <string> WORD
%token <string> NAME
%token EOF
%start <int> program
%%

program:
  | linebreak; complete_commands; linebreak { 0 }
  | linebreak { 0 };

complete_commands:
  | complete_commands; newline_list; complete_command {}
  | complete_command                                  {};

complete_command:
  | list_c; separator_op         {}
  | list_c                       {} ;

list_c:
  | list_c; separator_op; and_or {}
  | and_or                       {} ;

and_or:
  | pipeline                            {}
  | and_or; AND_IF; linebreak; pipeline {}
  | and_or; OR_IF;  linebreak; pipeline {} ;

pipeline:
  | pipe_sequence       {}
  | BANG; pipe_sequence {} ;

pipe_sequence:
  | command                                 {}
  | pipe_sequence; PIPE; linebreak; command {} ;

command:
  | simple_command                  {}
  | compound_command                {}
  | compound_command; redirect_list {}
  | function_definition             {};

compound_command:
  | brace_group               {}
  | subshell                  {}
  | for_clause                {}
  | case_clause               {}
  | if_clause                 {}
  | while_clause              {}
  | until_clause              {} ;

subshell:
  | LPAR; compound_list; RPAR {} ;

compound_list:
  | linebreak; term            {}
  | linebreak; term; separator {} ;

term:
  | term              {}
  | separator; and_or {}
  | and_or            {} ;

for_clause:
  | FOR; name;                                            do_group {}
  | FOR; name;                            sequential_sep; do_group {}
  | FOR; name; linebreak; in_r;           sequential_sep; do_group {}
  | FOR; name; linebreak; in_r; wordlist; sequential_sep; do_group {} ;

name:
  | NAME (* Apply rule 5 *) {} ;

in_r:
  | IN (* Apply rule 6 *)   {} ;

wordlist:
  | wordlist; WORD {}
  | WORD           {} ;

case_clause:
  | CASE; WORD; linebreak; in_r; linebreak; case_list; ESAC    {}
  | CASE; WORD; linebreak; in_r; linebreak; case_list_ns; ESAC {}
  | CASE; WORD; linebreak; in_r; linebreak; ESAC               {} ;

case_list_ns:
  | case_list; case_item_ns            {}
  | case_item_ns                       {} ;

case_list:
  | case_list; case_item               {}
  | case_item                          {} ;

case_item_ns:
  |       pattern; RPAR; linebreak     {}
  |       pattern; RPAR; compound_list {}
  | LPAR; pattern; RPAR; linebreak     {}
  | LPAR; pattern; RPAR; compound_list {} ;

case_item:
  |       pattern; RPAR; linebreak;     DSEMI; linebreak  {}
  |       pattern; RPAR; compound_list; DSEMI; linebreak  {}
  | LPAR; pattern; RPAR; linebreak;     DSEMI; linebreak  {}
  | LPAR; pattern; RPAR; compound_list; DSEMI; linebreak  {} ;

pattern:
  | WORD         (* Apply rule 4 *)                       {}
  | pattern PIPE WORD         (* Do not apply rule 4 *)   {} ;

if_clause:
  | IF; compound_list; THEN; compound_list; else_part; FI {}
  | IF; compound_list; THEN; compound_list;            FI {} ;

else_part:
  | ELIF; compound_list; THEN; compound_list              {}
  | ELIF; compound_list; THEN; compound_list; else_part   {}
  | ELSE; compound_list                                   {} ;

while_clause:
  | WHILE; compound_list; do_group {} ;

until_clause:
  | UNTIL; compound_list; do_group {} ;

function_definition:
  | fname; LPAR; RPAR; linebreak; function_body         {} ;

function_body:
  | compound_command                 (* Apply rule 9 *) {}
  | compound_command; redirect_list  (* Apply rule 9 *) {} ;


fname:
  | NAME  (* Apply rule 8 *)         {} ;

brace_group:
  | LBRACE; compound_list; RBRACE    {} ;

do_group:
  | DO; compound_list; DONE          {} ; (* Apply rule 6 *)

simple_command:
  | cmd_prefix; cmd_word; cmd_suffix {}
  | cmd_prefix; cmd_word             {}
  | cmd_prefix                       {}
  | cmd_name; cmd_suffix             {}
  | cmd_name                         {} ;

cmd_name:
  | WORD    (* Apply rule 7a *) {} ;

cmd_word:
  | WORD    (* Apply rule 7b *) {} ;

cmd_prefix:
  | io_redirect                 {}
  | cmd_prefix; io_redirect     {}
  | ASSIGNMENT_WORD             {}
  | cmd_prefix; ASSIGNMENT_WORD {} ;

cmd_suffix:
  | io_redirect                 {}
  | cmd_suffix; io_redirect     {}
  | WORD                        {}
  | cmd_suffix; WORD            {} ;

redirect_list:
  | io_redirect                 {}
  | redirect_list; io_redirect  {} ;

io_redirect:
  | io_file            {}
  | IO_NUMBER; io_file {}
  |            io_here {}
  | IO_NUMBER; io_here {} ;

io_file:
  | LESS;      filename {}
  | LESSAND;   filename {}
  | GREAT;     filename {}
  | GREATAND;  filename {}
  | DGREAT;    filename {}
  | LESSGREAT; filename {}
  | CLOBBER;   filename {} ;

filename:
  | WORD (* Apply rule 2 *) {} ;

io_here:
  | DLESS; here_end         {}
  | DLESSDASH; here_end     {} ;

here_end:
  | WORD (* Apply rule 3 *) {} ;

separator:
  | separator_op; linebreak {}
  | newline_list            {} ;

sequential_sep:
  | SEMI; linebreak         {}
  | newline_list            {} ;

linebreak:
  | newline_list {}
  | (* empty *)  {} ;

newline_list:
  | NEWLINE               {}
  | newline_list; NEWLINE {} ;

separator_op:
  | AND  {}
  | SEMI {} ;
