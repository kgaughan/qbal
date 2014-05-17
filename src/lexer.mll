{
  open Parser

  exception Syntax_error
  exception Eof
}

rule read = parse
  | ' '+ =  { read lexbuf }
  | '{'     { L_CURLY }
  | '}'     { R_CURLY }
  | ','     { COMMA }
  | "<-"    { L_ATTACH }
  | "->"    { R_ATTACH }
  | '='     { INITIALISE }
  | '+'     { PLUS }
  | '-'     { MINUS }
  | '\'     { MULTIPLY }  (* Opposite of '/' *)
  | '/'     { DIVIDE }
  | '|'     { MODULUS }
  | '^'     { EXPONENT }
  | '('     { L_PAREN }
  | ')'     { R_PAREN }
  | '['     { L_SQUARE }
  | ']'     { R_SQUARE }
  | '!'     { LOGICAL_NOT }
  | "=="    { EQ }
  | "<="    { LEQ }
  | "=<"    { LEQ }
  | ">="    { GEQ }
  | "=>"    { GEQ }
  | '*'     { PRESERVE }
  | '#'     { NUMBER }
  | '&'     { FORCE_IN }
  | '@'     { FORCE_OUT }
  | '~'     { INSTR_Q_OVERRIDE }
  | ':'     { UPLEVEL }
  | '$'     { STRING }
  | '%'     { DIMINISH }
  | '`'     { COMMENT }
  | '"'     { SQUOTE }
  | 'Q'     { DEF_QUEUE }
  | 'F'     { DEF_FUNCTION }
