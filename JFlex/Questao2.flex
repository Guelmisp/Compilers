%%

%public
%class Questao2
%function token
%type Token
%line

%%

[\n\r\t] { }

[0-9]+ { return new Token(Token.NUM, yytext()); }

[.][0-9]+ { return new Token(Token.FLOAT, yytext()); }

[a-zA-Z]+ { return new Token(Token.ID, yytext()); }

[+]|[-]|[/]|[*]|[(]|[)]|[=] { return new Token(Token.ID, yytext()); }

<<EOF>> { return new Token(Token.EOF, "<<EOF>>"); }

.       { return new RuntimeException("token nao identificado" + yytext()); }
