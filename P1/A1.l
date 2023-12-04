%{
	#include "A1.tab.h"
	#include <string.h>
	#include <stdio.h>
	#include <string.h>
	#include <stdlib.h>
	struct tNode
	{
		char* sval;
		int macroArgId;
		struct tNode* next;
	};
	struct tNode* CreateToken(char* id,int argId)
	{
		struct tNode* newNode = (struct tNode*)(malloc(sizeof(struct tNode)));
		newNode -> sval = strdup(id);
		newNode -> macroArgId = argId;
		newNode -> next = NULL;
	}
%}

%%

"class" 				{ yylval.node = CreateToken(yytext,0); return CLASS;			}				
"public"				{ yylval.node = CreateToken(yytext,0); return PUBLIC;			}
"static"				{ yylval.node = CreateToken(yytext,0); return STATIC; 			}
"void"					{ yylval.node = CreateToken(yytext,0); return VOID;				}
"main"					{ yylval.node = CreateToken(yytext,0); return MAIN;				}
"String"				{ yylval.node = CreateToken(yytext,0); return STRING;			}
"return"				{ yylval.node = CreateToken(yytext,0); return RETURN;			}
"System.out.println"	{ yylval.node = CreateToken(yytext,0); return PRINT;			}
"extends"				{ yylval.node = CreateToken(yytext,0); return EXTENDS;			}
"int"					{ yylval.node = CreateToken(yytext,0); return INT;				}
"boolean"				{ yylval.node = CreateToken(yytext,0); return BOOLEAN;			}
"if"					{ yylval.node = CreateToken(yytext,0); return IF;				}
"else"					{ yylval.node = CreateToken(yytext,0); return ELSE;				}
"//".*         			{ }
"while"					{ yylval.node = CreateToken(yytext,0); return WHILE;			}
"#defineStmt"			{ return DEF_STMT;		}
"#defineStmt0"			{ return DEF_STMT0;		}
"#defineStmt1"			{ return DEF_STMT1;		}
"#defineStmt2"			{ return DEF_STMT2;		}
"#defineExpr"			{ return DEF_EXPR;		}
"#defineExpr0"			{ return DEF_EXPR0;		}
"#defineExpr1"			{ return DEF_EXPR1;		}
"#defineExpr2"			{ return DEF_EXPR2;		}
"length"				{ yylval.node = CreateToken(yytext,0); return LENGTH;			}
"true"					{ yylval.node = CreateToken(yytext,0); return TRUE;				}
"false"					{ yylval.node = CreateToken(yytext,0); return FALSE;			}
"this"					{ yylval.node = CreateToken(yytext,0); return THIS;				}
"new"					{ yylval.node = CreateToken(yytext,0); return NEW;				}
"{" 					{ yylval.node = CreateToken(yytext,-1); return OPEN_CURL_BKT;	}
"}"						{ yylval.node = CreateToken(yytext,-1); return CLOSE_CURL_BKT;	}
"("						{ yylval.node = CreateToken(yytext,-1); return OPEN_RND_BKT;	}
")"						{ yylval.node = CreateToken(yytext,-1); return CLOSE_RND_BKT;	}
"["						{ yylval.node = CreateToken(yytext,-1); return OPEN_SQR_BKT;	}
"]"						{ yylval.node = CreateToken(yytext,-1); return CLOSE_SQR_BKT;	}
","						{ yylval.node = CreateToken(yytext,-1); return COMMA;			}
";"						{ yylval.node = CreateToken(yytext,-1); return SEMI_COLON;		}
"."						{ yylval.node = CreateToken(yytext,-1); return DOT;				}
"="						{ yylval.node = CreateToken(yytext,0); return EQ;				}
"&&"					{ yylval.node = CreateToken(yytext,0); return LAND;				}
"||"					{ yylval.node = CreateToken(yytext,0); return LOR;				}
"!="					{ yylval.node = CreateToken(yytext,0); return NEQ;				}
"<="					{ yylval.node = CreateToken(yytext,0); return LTE;				}
"+"						{ yylval.node = CreateToken(yytext,0); return PLUS;				}
"-"						{ yylval.node = CreateToken(yytext,0); return MINUS;			}
"*"						{ yylval.node = CreateToken(yytext,0); return MUL;				}
"/"						{ yylval.node = CreateToken(yytext,0); return DIV;				}
"!"						{ yylval.node = CreateToken(yytext,-1); return NOT;				}
[a-zA-Z_][a-zA-Z_0-9]*	{ yylval.node = CreateToken(yytext,0); return IDENTIFIER;		}
[0-9]+					{ yylval.node = CreateToken(yytext,0); return INTEGER;			}
[ \t\n]					{ }

%%