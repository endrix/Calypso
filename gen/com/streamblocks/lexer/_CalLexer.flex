package com.streamblocks.parser;

import com.intellij.lexer.FlexLexer;
import com.intellij.psi.tree.IElementType;

import static com.intellij.psi.TokenType.BAD_CHARACTER;
import static com.intellij.psi.TokenType.WHITE_SPACE;
import static com.streamblocks.cal.psi.CalTypes.*;

%%

%{
  public _CalLexer() {
    this((java.io.Reader)null);
  }
%}

%public
%class _CalLexer
%implements FlexLexer
%function advance
%type IElementType
%unicode

EOL=\R
WHITE_SPACE=\s+

COMMENT="//".*
BLOCK_COMMENT="/"\*(.|\n)*\*"/"
SPACE=[ \t\n\x0B\f\r]+
NUMBER=[0-9]+(\.[0-9]*)?
ID=([:letter:])[a-zA-Z_0-9]*
STRING=('([^'\\]|\\.)*'|\"([^\"\\]|\\.)*\")

%%
<YYINITIAL> {
  {WHITE_SPACE}        { return WHITE_SPACE; }

  "action"             { return ACTION; }
  "actor"              { return ACTOR; }
  "all"                { return ALL; }
  "and"                { return AND; }
  "any"                { return ANY; }
  "at"                 { return AT; }
  "at*"                { return AT_START; }
  "begin"              { return BEGIN; }
  "choose"             { return CHOOSE; }
  "const"              { return CONST; }
  "delay"              { return DELAY; }
  "div"                { return DIV; }
  "do"                 { return DO; }
  "dom"                { return DOM; }
  "else"               { return ELSE; }
  "elsif"              { return ELSEIF; }
  "end"                { return END; }
  "endaction"          { return ENDACTION; }
  "endactor"           { return ENDACTOR; }
  "endchoose"          { return ENDCHOOSE; }
  "endforeach"         { return ENDFOREACH; }
  "endfunction"        { return ENDFUNCTION; }
  "endif"              { return ENDIF; }
  "endinitialize"      { return ENDINITIALIZE; }
  "endlambda"          { return ENDLAMBDA; }
  "endlet"             { return ENDLET; }
  "endpriority"        { return ENDPRIORITY; }
  "endproc"            { return ENDPROC; }
  "endprocedure"       { return ENDPROCEDURE; }
  "endschedule"        { return ENDSCHEDULE; }
  "endwhile"           { return ENDWHILE; }
  "entity"             { return ENTITY; }
  "false"              { return FALSE; }
  "for"                { return FOR; }
  "foreach"            { return FOREACH; }
  "fsm"                { return FSM; }
  "function"           { return FUNCTION; }
  "guard"              { return GUARD; }
  "if"                 { return IF; }
  "import"             { return IMPORT; }
  "in"                 { return IN; }
  "initialize"         { return INITIALIZE; }
  "lambda"             { return LAMBDA; }
  "let"                { return LET; }
  "map"                { return MAP; }
  "mod"                { return MOD; }
  "multi"              { return MULTI; }
  "mutable"            { return MUTABLE; }
  "namespace"          { return NAMESPACE; }
  "not"                { return NOT; }
  "null"               { return NULL; }
  "old"                { return OLD; }
  "or"                 { return OR; }
  "priority"           { return PRIORITY; }
  "proc"               { return PROC; }
  "procedure"          { return PROCEDURE; }
  "regexp"             { return REGEXP; }
  "repeat"             { return REPEAT; }
  "rng"                { return RNG; }
  "schedule"           { return SCHEDULE; }
  "then"               { return THEN; }
  "time"               { return TIME; }
  "true"               { return TRUE; }
  "type"               { return TYPE; }
  "var"                { return VAR; }
  "while"              { return WHILE; }
  "package"            { return PACKAGE; }
  "unit"               { return UNIT; }
  "public"             { return PUBLIC; }
  "private"            { return PRIVATE; }
  "local"              { return LOCAL; }
  "network"            { return NETWORK; }
  "entities"           { return ENTITIES; }
  "structure"          { return STRUCTURE; }
  "external"           { return EXTERNAL; }
  ":"                  { return COLON; }
  ";"                  { return SEMI_COLON; }
  "."                  { return DOT; }
  ","                  { return COMMA; }
  "==>"                { return LONG_DOUBLE_ARROW_RIGHT; }
  "-->"                { return LONG_SINGLE_ARROW_RIGHT; }
  "<--"                { return LONG_SINGLE_ARROW_LEFT; }
  "("                  { return LPAREN; }
  ")"                  { return RPAREN; }
  "{"                  { return LCURLY; }
  "}"                  { return RCURLY; }
  "]"                  { return LSQUARE; }
  "="                  { return EQ; }
  ":="                 { return COLON_EQ; }
  "->"                 { return SINGLE_ARROW_RIGHT; }
  "*"                  { return STAR; }
  ".*"                 { return DOT_STAR; }
  "@"                  { return CINNAMON_BUN; }
  "&"                  { return BIT_AND; }
  "|"                  { return BIT_OR; }
  "^"                  { return BIT_XOR; }
  "/"                  { return QUOTIENT; }
  "div"                { return DIVISION; }
  "=="                 { return DOUBLE_EQUAL; }
  "**"                 { return DOUBLE_START; }
  ">="                 { return GREATER_OR_EQUAL; }
  "<="                 { return LESS_OR_EQUAL; }
  "&&"                 { return COND_AND; }
  "||"                 { return COND_OR; }
  ">"                  { return GREATER_THAN; }
  "<"                  { return LESS_THAN; }
  "%"                  { return REMAINDER; }
  "mod"                { return MODULO; }
  "NOT_EQUAL"          { return NOT_EQUAL; }
  "+"                  { return PLUS; }
  "<<"                 { return SHIFT_LEFT; }
  ">>"                 { return SHIFT_RIGHT; }
  ".."                 { return TWO_DOTS; }
  "~"                  { return COMPLEMENT; }
  "!"                  { return BIT_NOT; }
  "#"                  { return HASHTAG; }

  {COMMENT}            { return COMMENT; }
  {BLOCK_COMMENT}      { return BLOCK_COMMENT; }
  {SPACE}              { return SPACE; }
  {NUMBER}             { return NUMBER; }
  {ID}                 { return ID; }
  {STRING}             { return STRING; }

}

[^] { return BAD_CHARACTER; }
