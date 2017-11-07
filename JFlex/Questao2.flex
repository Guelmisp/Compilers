/* Lexer example for integers, float, id and operations */

%%

%standalone
%class Questao2
%unicode
%line
%column

%%

[\n\r\t] { }

[0-9]+ { System.out.println("INT " + yytext()); }

[.][0-9]+ { System.out.println("FLOAT " + yytext()); }

[a-zA-Z]+ { System.out.println("ID " + yytext()); }

[+]|[-]|[/]|[*]|[(]|[)]|[=] { System.out.println("OPERATOR " + yytext()); }

.       { System.out.println("Caracter nao valido" + yytext());}

<<EOF>> { System.out.println("<<EOF>> "); return 0; }
