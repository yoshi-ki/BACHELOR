let digit = ['0'-'9']
let space = ' ' | '\t' | '\r' | '\n'
let alpha = ['a'-'z' 'A'-'Z' '_' ] 
let ident = alpha (alpha | digit)* 

rule main = parse
| space+       { main lexbuf }
| "+"          { Parser.PLUS }
| "*"          { Parser.TIMES }
| "-"          { Parser.MINUS }
| "/"          { Parser.DIV }
| "="          { Parser.EQ }
| "<"          { Parser.LT }
| "let"        { Parser.LET }
| "rec"        { Parser.REC }
| "in"         { Parser.IN }
| "if"         { Parser.IF }
| "then"       { Parser.THEN }
| "else"       { Parser.ELSE }
| "true"       { Parser.BOOL (true) }
| "false"      { Parser.BOOL (false) }
| "("          { Parser.LPAR }
| ")"          { Parser.RPAR }
| "fun"        { Parser.FUN}
| "->"         { Parser.ARROW }
| "["          { Parser.LBRACKET }
| "]"          { Parser.RBRACKET }
| "::"         { Parser.CONS }
| ","          { Parser.COMMA }
| "match"      { Parser.MATCH }
| "with"       { Parser.WITH }
| "|"          { Parser.BAR }
| ";;"         { Parser.SEMISEMI }
| "ref"		   { Parser.REF }
| "!"		   { Parser.EXCLAM }
| ":"		   { Parser.CORON }
| digit+ as n  { Parser.INT (int_of_string n) }
| ident  as id { Parser.ID id }
| _            { failwith (Printf.printf "\027[38;5;1mError\027[0m";": Unknown Token: " ^ Lexing.lexeme lexbuf)}
