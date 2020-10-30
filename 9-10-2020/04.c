#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
int main()
{
	int fd;
	fd= open("redirect.txt",O_WRONLY | O_CREAT, S_IREAD | S_IWRITE );
	if (fd == -1)
	{
		perror("redirect.txt");
		exit (1);
	}
	close(1); /* close standard output */
	dup(fd); /* fd will be duplicated into standard out's slot */
	close(fd); /* close the extra slot */
	printf("This text which you are reading has been redirected to redirect.txt!\n"); /* should go to file redirect.txt */
	exit (0); /* exit() will close the files */
}