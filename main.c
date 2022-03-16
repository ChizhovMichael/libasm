#include <stdlib.h>
#include <stdio.h>
#include <string.h>

size_t ft_strlen(char *str);
char  *ft_strcpy(char *dst, const char *src);
int ft_strcmp(char *s1, char *s2);
void ft_write(int fildes, const void *buf, size_t nbyte);

int main(void)
{
    size_t  i;
    char str[80];

    printf("%ld\n", ft_strlen("hello world"));
    
    ft_strcpy(str, "hello");
    printf("%s\n", str);
    printf("%d\n", ft_strcmp("hela", "hell"));
    ft_write(1, "h", 2);
    printf("%d", ft_write(1, "hello", 5));
    return (0);
}
