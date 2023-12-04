/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_A1_TAB_H_INCLUDED
# define YY_YY_A1_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    CLASS = 258,
    PUBLIC = 259,
    STATIC = 260,
    VOID = 261,
    MAIN = 262,
    STRING = 263,
    PRINT = 264,
    EXTENDS = 265,
    RETURN = 266,
    INT = 267,
    BOOLEAN = 268,
    IF = 269,
    ELSE = 270,
    WHILE = 271,
    DEF_STMT = 272,
    DEF_STMT0 = 273,
    DEF_STMT1 = 274,
    DEF_STMT2 = 275,
    DEF_EXPR = 276,
    DEF_EXPR0 = 277,
    DEF_EXPR1 = 278,
    DEF_EXPR2 = 279,
    LENGTH = 280,
    TRUE = 281,
    FALSE = 282,
    THIS = 283,
    NEW = 284,
    OPEN_CURL_BKT = 285,
    CLOSE_CURL_BKT = 286,
    OPEN_RND_BKT = 287,
    CLOSE_RND_BKT = 288,
    OPEN_SQR_BKT = 289,
    CLOSE_SQR_BKT = 290,
    COMMA = 291,
    SEMI_COLON = 292,
    DOT = 293,
    EQ = 294,
    LAND = 295,
    LOR = 296,
    NEQ = 297,
    LTE = 298,
    PLUS = 299,
    MINUS = 300,
    MUL = 301,
    DIV = 302,
    NOT = 303,
    IDENTIFIER = 304,
    INTEGER = 305
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 261 "A1.y"

	struct tNode* node;
	int ival;

#line 113 "A1.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_A1_TAB_H_INCLUDED  */
