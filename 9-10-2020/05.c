#include <stdio.h>
#include <stdlib.h>

int main()
{
if ((link("old_link.txt", "new_link.txt")) == -1)
{
perror(" ");
exit (1); /* return a non-zero exit code on error */
}
else
printf("File linked and contents copied successfully \n");
exit(0);
}