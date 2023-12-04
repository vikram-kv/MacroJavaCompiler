%{
	#include <stdio.h>
	#include <string.h>
	#include <stdlib.h>
	extern int yylex();
	extern int yyparse();

	void yyerror(const char* s);

	struct tNode
	{
		char* sval;
		int macroArgId;
		struct tNode* next;
	};

	struct mNode
	{
		char* id;
		int argc;
		struct tNode* argList;
		struct tNode* macroDefn;
		struct mNode* next;
	};

	struct mNode* macroList = NULL;
%}

%code {

	void InsNext(struct tNode* pos,struct tNode* nextLink)
	{
		pos-> next = nextLink;
	}

	void InsList(struct tNode* head, struct tNode* nextLink)
	{
		while((head->next)!= NULL)
		{
			head = head ->next;
		}
		head -> next = nextLink;
	}

	void PrintList(struct tNode* head)
	{
		struct tNode* temp = head;
		char* cur;
		int curSym,nextSym;
		int level = 0;
		while(temp!=NULL)
		{
			cur = temp -> sval;

			if(strcmp("{",cur) == 0 || strcmp(cur,"}") == 0 || strcmp(cur,";") == 0)
			{
				printf("%s\n",cur);
				if(strcmp(cur,"{") == 0)
					++level;
				if(strcmp(cur,"}") == 0)
					--level;
				for(int i=0;i<level;++i)
				{
					printf("\t");
				}
			}
			else
			{
				curSym = temp -> macroArgId;
				if(temp->next != NULL)
				{
					nextSym = temp -> next -> macroArgId;
					if((strcmp(".",cur) == 0) || (strcmp("[",cur)==0)|| (nextSym == -1 && curSym == 0) || (curSym == -1 && nextSym == -1))
						printf("%s",cur);
					else
						printf("%s ",cur);
				}
				else
				{
					printf("%s ",cur);
				}
			}
			temp = temp -> next;
		}
	}

	void AddMacro(struct tNode* macId, struct tNode* argumentList, struct tNode* macDef)
	{
		struct mNode* newNode = (struct mNode*)(malloc(1*sizeof(struct mNode)));
		newNode -> id = macId -> sval;
		newNode -> argList = argumentList;
		newNode -> macroDefn = macDef;
		newNode -> next = NULL;
		if(macroList == NULL)
		{
			macroList = newNode;
		}
		else
		{
			struct mNode* temp = macroList;
			while(temp->next != NULL)
			{
				temp = temp->next;
			}
			temp -> next = newNode;
		}
		struct tNode* ptr = newNode->argList;
		int cur = 1;
		while(ptr!=NULL)
		{
			ptr -> macroArgId = cur;
			ptr = ptr->next;
			++cur;
		}
		newNode->argc = cur-1;
		ptr = newNode -> argList;
		struct tNode* ptr1;
		while(ptr!=NULL)
		{
			ptr1 = newNode -> macroDefn;
			while(ptr1!=NULL)
			{
				if(strcmp(ptr->sval,ptr1->sval) == 0)
				{
					ptr1 -> macroArgId = ptr -> macroArgId;
				}
				ptr1 = ptr1->next;
			}
			ptr = ptr->next;
		}
	}

	struct tNode* CreateCopy(struct tNode* list)
	{
		struct tNode* temp = list;
		struct tNode* newNode;
		struct tNode* retListHead = NULL;
		struct tNode* retListPtr;
		while(temp != NULL)
		{
			newNode = (struct tNode*)(malloc(1*sizeof(struct tNode)));
			newNode -> sval = strdup(temp->sval);
			newNode -> next = NULL;
			newNode -> macroArgId = temp -> macroArgId;
			if(retListHead == NULL)
			{
				retListHead = newNode;
				retListPtr = retListHead;
			}
			else
			{
				retListPtr -> next = newNode;
				retListPtr = newNode;
			}
			temp = temp -> next;
		}
		return retListHead;
	}

	struct tNode* GetFirstExpression(struct tNode** expressions)
	{
		struct tNode* ptr = *expressions;
		struct tNode* retVal;
		if(ptr == NULL)
			return NULL;
		else
		{
			retVal = ptr;
			struct tNode* prev;
			while(ptr!= NULL && strcmp(ptr->sval,",")!=0)
			{
				prev = ptr;
				ptr = ptr->next;
			}
			prev->next = NULL;
			*expressions = ptr;
			if(ptr != NULL)
			{
				*expressions = ptr->next;
				free(ptr->sval);
				free(ptr);
			}
			return retVal;
		}
	}

	void Replace(struct tNode** expansion,struct tNode* curExpr,int arg)
	{
		struct tNode* head = *expansion;
		struct tNode* temp = head;
		struct tNode* prev = NULL;
		struct tNode *ins,*rem;
		while(temp!=NULL)
		{
			if(temp->macroArgId == arg)
			{
				rem = temp;
				ins = CreateCopy(curExpr);
				if(prev!=NULL)
				{
					prev-> next = ins;
				}
				else
				{
					head = ins;
				}
				while(ins!=NULL && ins->next!=NULL)
					ins = ins -> next;
				ins->next = rem-> next;
				prev = ins;
				temp = ins->next;
				free(rem->sval);
				free(rem);
			}
			else
			{
				prev = temp;
				temp = temp -> next;
			}
		}
		*expansion = head;
	}

	void Erase(struct tNode* listHead)
	{
		struct tNode* temp;
		while(listHead!=NULL)
		{
			temp = listHead;
			listHead = listHead->next;
			free(temp->sval);
			free(temp);
		}
	}

	struct tNode* ExpandMacro(struct tNode* macro, struct tNode* exprList)
	{
		struct mNode* macroPos = macroList;
		while(macroPos!=NULL)
		{
			if(strcmp(macroPos->id,macro->sval) == 0)
				break;
			macroPos = macroPos -> next;
		}

		struct tNode* expPtr = exprList;
		struct tNode* expansion = CreateCopy(macroPos -> macroDefn);
		struct tNode* curExpr;
		int arg = 1;
		while(expPtr!=NULL)
		{
			curExpr = GetFirstExpression(&expPtr);
			Replace(&expansion,curExpr,arg);
			Erase(curExpr);
			++arg;
		}
		return expansion;
	}
}

%union {
	struct tNode* node;
	int ival;
}

%token <node> CLASS PUBLIC STATIC VOID
%token <node> MAIN STRING PRINT EXTENDS
%token <node> RETURN INT BOOLEAN IF ELSE WHILE
%token DEF_STMT DEF_STMT0 DEF_STMT1 DEF_STMT2
%token DEF_EXPR DEF_EXPR0 DEF_EXPR1 DEF_EXPR2
%token <node> LENGTH TRUE FALSE THIS NEW
%token <node> OPEN_CURL_BKT CLOSE_CURL_BKT OPEN_RND_BKT CLOSE_RND_BKT
%token <node> OPEN_SQR_BKT CLOSE_SQR_BKT COMMA SEMI_COLON
%token <node> DOT EQ LAND LOR NEQ
%token <node> LTE PLUS MINUS MUL DIV
%token <node> NOT
%token <node> IDENTIFIER
%token <node> INTEGER


%type <ival> MacroDefinitions Goal
%type <ival> MacroDefinition MacroDefStatement MacroDefExpression

%type <node> MainClass MultiVarDeclaration MultiMethodDeclaration TypeDeclarations
%type <node> TypeDeclaration MethodArgNull MethodArgNonNull MethodArg
%type <node> MultiStatement MethodDeclaration Type ExprListNull MethodBody
%type <node> ExprListNonNull ExprList 
%type <node> Statement Expression PrimaryExpression
%type <node> IdentifierList IdentifierListNonNull IdentifierListNull
%type <node> Identifier Integer 


%%
	Goal : MacroDefinitions MainClass TypeDeclarations 
		   {
		   		PrintList($2);
		   		PrintList($3);
		   		$$ = 1;
		   };

	MacroDefinitions :	{$$ = 1;}
		| 	MacroDefinitions MacroDefinition {$$ = 1;};

	TypeDeclarations :  {$$ = NULL;}
		| 	TypeDeclarations TypeDeclaration 
			{
				if($1 != NULL)
				{
					InsList($1,$2);
					$$ = $1;					
				}
				else
				{
					$$ = $2;
				}
			};

	MainClass : CLASS Identifier OPEN_CURL_BKT PUBLIC STATIC VOID MAIN OPEN_RND_BKT STRING OPEN_SQR_BKT CLOSE_SQR_BKT Identifier CLOSE_RND_BKT OPEN_CURL_BKT PRINT OPEN_RND_BKT Expression CLOSE_RND_BKT SEMI_COLON CLOSE_CURL_BKT CLOSE_CURL_BKT 
				{
					InsNext($1,$2);
					InsNext($2,$3);
					InsNext($3,$4);
					InsNext($4,$5);
					InsNext($5,$6);
					InsNext($6,$7);
					InsNext($7,$8);
					InsNext($8,$9);
					InsNext($9,$10);
					InsNext($10,$11);
					InsNext($11,$12);
					InsNext($12,$13);
					InsNext($13,$14);
					InsNext($14,$15);
					InsNext($15,$16);
					InsNext($16,$17);
					InsNext($18,$19);
					InsNext($19,$20);
					InsNext($20,$21);
					InsList($1,$18);
					$$ = $1;
				};

	MultiVarDeclaration : {$$ = NULL;}
		|	MultiVarDeclaration Type Identifier SEMI_COLON 
			{
				InsList($2,$3);
				InsList($2,$4);
				if($1 != NULL)
				{
					InsList($1,$2);
					$$ = $1;
				}
				else
				{
					$$ = $2;
				}
			};

	MultiMethodDeclaration : {$$ = NULL;}
		|   MultiMethodDeclaration MethodDeclaration 
			{
				if($1!=NULL)
				{
					InsList($1,$2);
					$$ = $1;
				}
				else
				{
					$$ = $2;
				}
			};

	TypeDeclaration : 
			CLASS Identifier OPEN_CURL_BKT MultiVarDeclaration MultiMethodDeclaration CLOSE_CURL_BKT 
			{
				InsNext($1,$2);
				InsNext($2,$3);
				InsNext($3,$4);
				InsList($1,$5);
				InsList($1,$6);
				$$ = $1;
			}
		|	CLASS Identifier EXTENDS Identifier OPEN_CURL_BKT MultiVarDeclaration MultiMethodDeclaration CLOSE_CURL_BKT 
			{
				InsNext($1,$2);
				InsNext($2,$3);
				InsNext($3,$4);
				InsNext($4,$5);
				InsList($1,$6);
				InsList($1,$7);
				InsList($1,$8);				
			};


	MethodArgNull : {$$ = NULL;};

	MethodArgNonNull: 
			Type Identifier 
			{
				InsNext($1,$2);
				$$ = $1;
			}
		| 	MethodArgNonNull COMMA Type Identifier 
			{
				InsNext($2,$3);
				InsNext($3,$4);
				InsList($1,$2);
				$$ = $1;
			};

	MethodArg : 
			MethodArgNull {$$ = $1; }
		|   MethodArgNonNull {$$ = $1; };

	MultiStatement : 
			{$$ = NULL;}
		|   MultiStatement Statement 
			{
				if($1 == NULL)
					$$ = $2;
				else
				{
					InsList($1,$2);
					$$ = $1;
				}
			};

	MethodDeclaration : 
			PUBLIC Type Identifier OPEN_RND_BKT MethodArg CLOSE_RND_BKT OPEN_CURL_BKT MethodBody RETURN Expression SEMI_COLON CLOSE_CURL_BKT 
			{
				InsNext($1,$2);
				InsNext($2,$3);
				InsNext($3,$4);
				InsList($1,$5);
				InsNext($6,$7);
				InsNext($7,$8);
				InsList($1,$6);
				InsNext($9,$10);
				InsNext($11,$12);
				InsList($1,$9);
				InsList($1,$11);
				$$ = $1;
			};

	MethodBody :	
			MultiVarDeclaration {$$ = $1;}
		|	MultiVarDeclaration Statement MultiStatement 
			{
				InsList($2,$3);
				if($1!=NULL)
				{
					InsList($1,$2);
					$$ = $1;
				}
				else
				{
					$$ = $2;
				}
			};

	Type : 
			INT OPEN_SQR_BKT CLOSE_SQR_BKT 
			{
				
				InsNext($1,$2);
				InsNext($2,$3);
				$$ = $1;
			}
		|	BOOLEAN {$$ = $1; }
		|   INT     {$$ = $1; }
		|   Identifier {$$ = $1; };

	ExprListNull : {$$ = NULL;};

	ExprListNonNull : Expression {$$ = $1; }
		|   ExprListNonNull COMMA Expression 
			{	
				InsNext($2,$3);
				InsList($1,$2);
				$$ = $1;
			};

	ExprList : ExprListNull {$$ = $1; }
		|   ExprListNonNull {$$ = $1; };

	Statement : 
			OPEN_CURL_BKT MultiStatement CLOSE_CURL_BKT 
			{
				InsNext($1,$2);
				InsList($1,$3);
				$$ = $1;
			}
		|	PRINT OPEN_RND_BKT Expression CLOSE_RND_BKT SEMI_COLON 
			{
				InsNext($1,$2);
				InsNext($2,$3);
				InsNext($4,$5);
				InsList($1,$4);
				$$ = $1;
			}
		|   Identifier EQ Expression SEMI_COLON 
			{
				InsNext($1,$2);
				InsNext($2,$3);
				InsList($1,$4);
				$$ = $1;
			}
		|   Identifier OPEN_SQR_BKT Expression CLOSE_SQR_BKT EQ Expression SEMI_COLON 
			{
				InsNext($1,$2);
				InsNext($2,$3);
				InsNext($4,$5);
				InsNext($5,$6);
				InsList($1,$4);
				InsList($1,$7);
				$$ = $1;
			}
		|   IF OPEN_RND_BKT Expression CLOSE_RND_BKT Statement
			{
				InsNext($1,$2);
				InsNext($2,$3);
				InsNext($4,$5);
				InsList($1,$4);
				$$ = $1;
			}
		|	IF OPEN_RND_BKT Expression CLOSE_RND_BKT Statement ELSE Statement 
			{
				InsNext($1,$2);
				InsNext($2,$3);
				InsNext($4,$5);
				InsNext($6,$7);
				InsList($1,$4);
				InsList($1,$6);
				$$ = $1;
			}
		|   WHILE OPEN_RND_BKT Expression CLOSE_RND_BKT Statement
			{
				InsNext($1,$2);
				InsNext($2,$3);
				InsNext($4,$5);
				InsList($1,$4);
				$$ = $1;
			}
		|   Identifier OPEN_RND_BKT ExprList CLOSE_RND_BKT SEMI_COLON
			{
				$$ = ExpandMacro($1,$3);
			};


	Expression : 
			PrimaryExpression LAND PrimaryExpression 
			{
				InsList($1,$2);
				InsList($1,$3);
				$$ = $1;
			}
		|	PrimaryExpression LOR PrimaryExpression
			{
				InsList($1,$2);
				InsList($1,$3);
				$$ = $1;
			}
		|   PrimaryExpression NEQ PrimaryExpression
			{
				InsList($1,$2);
				InsList($1,$3);
				$$ = $1;
			}
		|   PrimaryExpression LTE PrimaryExpression
			{
				InsList($1,$2);
				InsList($1,$3);
				$$ = $1;
			}
		|   PrimaryExpression PLUS PrimaryExpression
			{
				InsList($1,$2);
				InsList($1,$3);
				$$ = $1;
			}
		|   PrimaryExpression MINUS PrimaryExpression
			{
				InsList($1,$2);
				InsList($1,$3);
				$$ = $1;
			}
		|   PrimaryExpression MUL PrimaryExpression
			{
				InsList($1,$2);
				InsList($1,$3);
				$$ = $1;
			}
		|   PrimaryExpression DIV PrimaryExpression
			{
				InsList($1,$2);
				InsList($1,$3);
				$$ = $1;
			}
		|   PrimaryExpression OPEN_SQR_BKT PrimaryExpression CLOSE_SQR_BKT
			{
				InsList($1,$2);
				InsList($3,$4);
				InsList($1,$3);
				$$ = $1;
			}
		|   PrimaryExpression DOT LENGTH 
			{
				InsNext($2,$3);
				InsList($1,$2);
				$$ = $1;
			}
		|   PrimaryExpression
			{
				$$ = $1;
			}
		| 	PrimaryExpression DOT Identifier OPEN_RND_BKT ExprList CLOSE_RND_BKT
			{
				InsNext($2,$3);
				InsNext($3,$4);
				InsList($1,$2);
				InsList($1,$5);
				InsList($1,$6);
				$$ = $1;
			}
		|   Identifier OPEN_RND_BKT ExprList CLOSE_RND_BKT 
			{
				$$ = ExpandMacro($1,$3);
			};


	PrimaryExpression :
			Integer { $$ = $1; }
		|   TRUE { $$ = $1; }
		|   FALSE { $$ = $1; }
		|   Identifier { $$ = $1; }
		|   THIS { $$ = $1; } 
		|	NEW INT OPEN_SQR_BKT Expression CLOSE_SQR_BKT 
			{ 
				InsNext($1,$2);
				InsNext($2,$3);
				InsNext($3,$4);
				InsList($1,$5);
				$$ = $1;
			}
		|	NEW Identifier OPEN_RND_BKT CLOSE_RND_BKT 			
			{ 
				InsNext($1,$2);
				InsNext($2,$3);
				InsNext($3,$4);
				$$ = $1;
			}
		|   NOT Expression 
			{
				InsNext($1,$2);
				$$ = $1;
			}
		|   OPEN_RND_BKT Expression CLOSE_RND_BKT 
			{ 
				InsNext($1,$2);
				InsList($1,$3);
				$$ = $1;
			};


	IdentifierListNull : {$$ = NULL};
	IdentifierListNonNull : 
			Identifier 
			{ 
				$$ = $1;
			}
		|	IdentifierListNonNull COMMA Identifier 
			{ 
				InsList($1,$3);
				$$ = $1;
			};
	IdentifierList : IdentifierListNonNull {$$ = $1;}
		|   IdentifierListNull    {$$ = $1; };

	MacroDefinition : MacroDefExpression {$$ = $1;}
		| 	MacroDefStatement  {$$ = $1;};


	MacroDefStatement : 
			DEF_STMT Identifier OPEN_RND_BKT Identifier COMMA Identifier COMMA IdentifierListNonNull CLOSE_RND_BKT OPEN_CURL_BKT MultiStatement CLOSE_CURL_BKT 
			{
				struct tNode* iList = $4;
				iList -> next = $6;
				struct tNode* temp = iList-> next;
				temp -> next = $8;
				InsNext($10,$11);
				InsList($10,$12);
				AddMacro($2,iList,$10);
				$$ = 1;
			}	
		|	DEF_STMT0 Identifier OPEN_RND_BKT CLOSE_RND_BKT OPEN_CURL_BKT MultiStatement CLOSE_CURL_BKT
			{
				InsNext($5,$6);
				InsList($5,$7);
				AddMacro($2,NULL,$5);
				$$ = 1;
			}
		|   DEF_STMT1 Identifier OPEN_RND_BKT Identifier CLOSE_RND_BKT OPEN_CURL_BKT MultiStatement CLOSE_CURL_BKT
			{
				InsNext($6,$7);
				InsList($6,$8);
				AddMacro($2,$4,$6);
				$$ = 1;
			}
		|   DEF_STMT2 Identifier OPEN_RND_BKT Identifier COMMA Identifier CLOSE_RND_BKT OPEN_CURL_BKT MultiStatement CLOSE_CURL_BKT
			{ 
				struct tNode* iList = $4;
				iList -> next = $6;
				InsNext($8,$9);
				InsList($8,$10);
				AddMacro($2,iList,$8);
				$$ = 1;
			};
	MacroDefExpression : DEF_EXPR Identifier OPEN_RND_BKT Identifier COMMA Identifier COMMA IdentifierListNonNull CLOSE_RND_BKT OPEN_RND_BKT Expression CLOSE_RND_BKT
			{ 
				struct tNode* iList = $4;
				iList -> next = $6;
				struct tNode* temp = iList-> next;
				temp -> next = $8;
				InsNext($10,$11);
				InsList($10,$12);
				AddMacro($2,iList,$10);
				$$ = 1;
			}	
		|	DEF_EXPR0 Identifier OPEN_RND_BKT CLOSE_RND_BKT OPEN_RND_BKT Expression CLOSE_RND_BKT
			{
				InsNext($5,$6);
				InsList($5,$7);
				AddMacro($2,NULL,$5);
				$$ = 1;
			}
		|   DEF_EXPR1 Identifier OPEN_RND_BKT Identifier CLOSE_RND_BKT OPEN_RND_BKT Expression CLOSE_RND_BKT
			{
				InsNext($6,$7);
				InsList($6,$8);
				AddMacro($2,$4,$6);
				$$ = 1;
			}
		|   DEF_EXPR2 Identifier OPEN_RND_BKT Identifier COMMA Identifier CLOSE_RND_BKT OPEN_RND_BKT Expression CLOSE_RND_BKT
			{ 
				struct tNode* iList = $4;
				iList -> next = $6;
				InsNext($8,$9);
				InsList($8,$10);
				AddMacro($2,iList,$8);
				$$ = 1;
			};

	Identifier : IDENTIFIER {$$ = $1;};

	Integer : INTEGER {$$ = $1;};


%%
	int main( )
	{
		yyparse();
		return 0;
	}

	void yyerror(const char* str)
	{
		printf("//Failed to parse input code\n");
		exit(-1);
	}