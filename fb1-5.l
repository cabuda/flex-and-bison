%{
#include "fb1-5.tab.h"
%}

%%
"+" { return ADD; }
"-" { return SUB; }
"*" { return MUL; }
"/" { return DIV; }
"|" { return ABS; }
[0-9]+ { yylval = atoi(yytext); return NUMBER; }
"0x"[a-fA-F0-9]+ { yylval = strtol(yytext, 0, 16); return NUMBER; }
\n { return EOL; }
"(" { return OP; }
")" { return CP; }
"//".* /* ignore comments */
. { printf("Mystery character %s\n", yytext); }
%%
