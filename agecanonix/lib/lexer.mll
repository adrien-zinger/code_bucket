(*


/* -------------------------------------------------------
   The grammar symbols
   ------------------------------------------------------- */
%token  WORD
%token  ASSIGNMENT_WORD
%token  NAME
%token  NEWLINE
%token  IO_NUMBER


/* The following are the operators (see XBD Operator)
   containing more than one character. */
%token  AND_IF    OR_IF    DSEMI
/*      '&&'      '||'     ';;'    */
%token  DLESS  DGREAT  LESSAND  GREATAND  LESSGREAT  DLESSDASH
/*      '<<'   '>>'    '<&'     '>&'      '<>'       '<<-'   */
%token  CLOBBER
/*      '>|'   */
/* The following are the reserved words. */
%token  If    Then    Else    Elif    Fi    Do    Done
/*      'if'  'then'  'else'  'elif'  'fi'  'do'  'done'   */
%token  Case    Esac    While    Until    For
/*      'case'  'esac'  'while'  'until'  'for'   */
/* These are reserved words, not operator tokens, and are
   recognized when reserved words are recognized. */
%token  Lbrace    Rbrace    Bang
/*      '{'       '}'       '!'   */
%token  In
/*      'in'   */
*)

{
open Lexing
open Parser

exception SyntaxError of string

let next_line lexbuf =
  let pos = lexbuf.lex_curr_p in
  lexbuf.lex_curr_p <-
    { pos with pos_bol = lexbuf.lex_curr_pos;
               pos_lnum = pos.pos_lnum + 1
    }
}

(*
  blank is a space or a tab
  Adds: it can be a sequence or itself
 *)
let blank = [' ' '\t']+
let word = ['a'-'z' 'A'-'Z' '0'-'9' '_']+
let assignment_word = '=' ['a'-'z' 'A'-'Z' '0'-'9' '_']+
let name = ['a'-'z' 'A'-'Z' '_'] ['a'-'z' 'A'-'Z' '0'-'9' '_']*
let newline = '\r' | '\n' | "\r\n"
let io_number = ['0'-'9']+ '<' | '>' ['0'-'9']+

(* X>    X>&Y   >&Y *)
(*       3>  1<      *)
(* define rules to read *)
rule read =
  parse
  | blank                       { read lexbuf }
  | newline                     { next_line lexbuf; read lexbuf }
  | "&&"                        { AND_IF }
  | "||"                        { OR_IF }
  | '|'                         { PIPE }
  | '&'                         { AND }
  | ';'                         { SEMI }
  | ";;"                        { DSEMI }
  | "<<"                        { DLESS }
  | ">>"                        { DGREAT }
  | "<&"                        { LESSAND }
  | ">&"                        { GREATAND }
  | "<>"                        { LESSGREAT }
  | "<<-"                       { DLESSDASH }
  | ">|"                        { CLOBBER }
  | "if"                        { IF }
  | "then"                      { THEN }
  | "else"                      { ELSE }
  | "fi"                        { FI }
  | "do"                        { DO }
  | "done"                      { DONE }
  | "case"                      { CASE }
  | "esac"                      { ESAC }
  | "while"                     { WHILE }
  | "until"                     { UNTIL }
  | "for"                       { FOR }
  | '{'                         { LBRACE }
  | '}'                         { RBRACE }
  | '!'                         { BANG }
  | "in"                        { IN }
  | '>'                         { GREAT }
  | '<'                         { LESS }
  | '('                         { LPAR }
  | ')'                         { RPAR }
  | assignment_word             { ASSIGNMENT_WORD (Lexing.lexeme lexbuf)  }
  | io_number                   { IO_NUMBER       (Lexing.lexeme lexbuf)  }
  | name                        { NAME            (Lexing.lexeme lexbuf)  }
  | assignment_word             { ASSIGNMENT_WORD (Lexing.lexeme lexbuf)  }
  | word                        { WORD (Lexing.lexeme lexbuf) }
  | _ { raise (SyntaxError ("Unexpected char: " ^ Lexing.lexeme lexbuf)) }
  | eof      { EOF }

