%token ZERO
%token ONE
%token EOF
%start <int option> prog
%%

prog:
  | ZERO; v; ONE         { Some 1 }
  | EOF              { None   };

v:
  |             {}
  | prog        {}
