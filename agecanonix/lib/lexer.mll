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
let name = ['a'-'z' 'A'-'Z' '_'] ['a'-'z' 'A'-'Z' '0'-'9' '_']*
let newline = '\r' | '\n' | "\r\n"

(* definition of metacharacters *)
let pipe = '|'
let _and = '&'
let semicolon = ';'
let l_parentesis = '('
let r_parentesis = ')'
let inf = '<'
let sup = '>'
(* blank and newline are also metacharacters already defined *)

(* definition of control operators*)
let double_pipe = "||"
let double_and = "&&"
let double_semicolon = ";;"
let semicolon_and = ";&"
let double_semicolon_and = ";;&"
let pipe_and = "|&"
(* & ; ( ) and newline are also control operators already defined *)

(* definition of reserved words *)
let exclamation = '!'
let case = "case"
let coproc = "coproc"
let _do = "do"
let _done = "done"
let elif = "elif"
let _else = "else"
let esac = "esac"
let fi = "fi"
let _for = "for"
let _function = "function"
let _if = "if"
let _in = "in"
let select = "select"
let _then = "then"
let until = "until"
let _while = "while"
let l_brace = "{"
let r_brace = "}"
let time = "time"
let l_brack = "[["
let r_brack = "]]"

(* define rules to read *)
rule read =
  parse
  | blank                       { read lexbuf }
  | newline                     { next_line lexbuf; read lexbuf }
  | pipe                        { PIPE }
  | _and                        { AND }
  | semicolon                   { SEMICOLON }
  | l_parentesis                { LEFT_PARENTESIS }
  | r_parentesis                { RIGHT_PARENTESIS }
  | inf                         { INF }
  | sup                         { SUP }
  | double_pipe                 { DOUBLE_PIPE }
  | double_and                  { DOUBLE_AND }
  | double_semicolon            { DOUBLE_SEMICOLON }
  | semicolon_and               { SEMICOLON_AND }
  | double_semicolon_and        { DOUBLE_SEMICOLON_AND }
  | pipe_and                    { PIPE_AND }
  | exclamation                 { EXCLAMATION }
  | case                        { CASE }
  | coproc                      { COPROC }
  | _do                         { DO }
  | _done                       { DONE }
  | elif                        { ELIF }
  | _else                       { ELSE }
  | esac                        { ESAC }
  | fi                          { FI }
  | _for                        { FOR }
  | _function                   { FUNCTION }
  | _if                         { IF }
  | _in                         { IN }
  | select                      { SELECT }
  | _then                       { THEN }
  | until                       { UNTIL }
  | _while                      { WHILE }
  | l_brace                     { LEFT_BRACE }
  | r_brace                     { RIGHT_BRACE }
  | time                        { TIME }
  | l_brack                     { LEFT_BRACK }
  | r_brack                     { RIGHT_BRACK }
  | word                        { WORD (Lexing.lexeme lexbuf) }
  | _ { raise (SyntaxError ("Unexpected char: " ^ Lexing.lexeme lexbuf)) }
  | eof      { EOF }

