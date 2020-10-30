#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include<sys/fcntl.h>

int main()
{
    int fd; // file descriptor
    fd = creat("TestCreateFile.txt", S_IREAD | S_IWRITE);
    if (fd == -1){
       printf("Error in opening TestCreateFile.txt\n");
   }
   else
   {
       printf("TestCreateFile.txt opened for read/write access\n");
       printf("TestCreateFile.txt is currently empty\n");
   }
   close(fd);
   exit (0);
}
