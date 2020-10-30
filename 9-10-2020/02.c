#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <stdlib.h>
#include <stdio.h>

static char message[] = "Good, morning.\n";

int main()
{
	int fd;
	char buffer[80];
	fd = open("TestOpenFile.txt",O_RDWR | O_CREAT | S_IREAD | S_IWRITE);

	if(fd != -1)
	{
		printf("TestOpenFile.txt opened for read/write access\n");
		write(fd, message, sizeof(message));
		lseek(fd, 0L,0); /* go back to the beginning of the file */
		if(read(fd, buffer, sizeof(message)) == sizeof(message))
			printf("\"%s\" was written to TestOpenFile.txt\n", buffer);
		else
			printf("*** Error Reading TestOpenFile.txt ***\n");

	}
	close(fd)
	return 0;

}