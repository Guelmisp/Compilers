%%
%{
int linha = 1; 
%}
%standalone
%class Line
lin = .*\n
%%
{lin} {linha++;}
<<EOF>> {System.out.println(linha); return 0;}
. {}