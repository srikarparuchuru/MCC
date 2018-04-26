#!bin/include
bison -d -v a.y
flex a.l
mv a.tab.c a.tab.cpp
mv lex.yy.c lex.yy.cpp
g++ a.tab.cpp lex.yy.cpp
rm *.*.*
./a.out <inp >out.s
cat out.s
rm a.out
