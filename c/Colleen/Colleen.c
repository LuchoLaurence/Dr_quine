#include <stdio.h>

/*
   Hey, this is an outside comment
*/

char *get_str()
{
    return "#include <stdio.h>%1$c%1$c/*%1$c   Hey, this is an outside comment%1$c*/%1$c%1$cchar *get_str()%1$c{%1$c    return %2$c%3$s%2$c;%1$c}%1$c%1$cint main(void)%1$c{%1$c    /*%1$c       Hey, this is an inside comment%1$c    */%1$c    char *str = get_str();%1$c    printf(str, 10, 34, str);%1$c}%1$c";
}

int main(void)
{
    /*
       Hey, this is an inside comment
    */
    char *str = get_str();
    printf(str, 10, 34, str);
}
