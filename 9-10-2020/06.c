#include <stdio.h>
#include <stdlib.h>
int main()
{
	if ((unlink("old_link.txt")) == -1)
	{
		perror(" ");
		exit (1); /* return a non-zero exit code on error */
	}
	else
		printf("File deleted successfully \n");
	exit (0);
}