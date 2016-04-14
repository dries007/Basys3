#include <stdio.h>
#include <string.h>

int main()
{
    printf(";*** File made by to_coe (by Dries007), don't edit manually! ***\n");
    printf("memory_initialization_radix=16;\n");
    printf("memory_initialization_vector=\n");
    int c;
    while ((c = getchar()) != -1)
    {
        if (c == '\n') printf("\n");
        else printf("%X ", c);
    }
    printf(";");
    return 0;
}