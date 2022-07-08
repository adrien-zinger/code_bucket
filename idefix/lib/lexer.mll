{
open Parser

exception SyntaxError of string

}

rule read =
  parse
  | '0'                         { ZERO }
  | '1'                         { ONE  }
  | '\n'      { EOF }
  | _ { raise (SyntaxError ("Unexpected char: " ^ Lexing.lexeme lexbuf)) }
  | eof      { EOF }

