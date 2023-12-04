echo $1
bison -d -v $1.y
flex $1.l
gcc -lfl lex.yy.c $1.tab.c -o $1

