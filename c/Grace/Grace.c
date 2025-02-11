#include <stdio.h>
#define FILE_NAME "Grace_kid.c"
#define CODE "#include <stdio.h>%1$c#define FILE_NAME %2$c%3$s%2$c%1$c#define CODE %2$c%4$s%2$c%1$c#define FT() int main(){FILE *f=fopen(FILE_NAME, %2$cw%2$c);fprintf(f,CODE,10,34,FILE_NAME,CODE);fclose(f);}%1$c/*%1$cThis is Grace%1$c*/%1$cFT()%1$c"
#define FT() int main(){FILE *f=fopen(FILE_NAME, "w");fprintf(f,CODE,10,34,FILE_NAME,CODE);fclose(f);}
/*
This is Grace
*/
FT()
