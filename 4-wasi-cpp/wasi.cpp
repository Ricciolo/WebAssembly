#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>

int main(int argc, char **argv)
{
   const char* fileName;
    if (argc < 2){
        fileName = "out/hello.txt";
    } else {
        fileName = argv[1];
    }
    printf("Writing to file %s\n", fileName);

    // create the file with write-only permissions
    int fd = open(fileName, O_CREAT | O_WRONLY);
    if (fd == -1)
    {
        perror("open");
        // handle error opening the file
        return 1;
    }

    const char *text = "Hello world!";
    int len = strlen(text);
    // write the text to the file
    int bytes_written = write(fd, text, len);
    if (bytes_written == -1)
    {
        perror("write");
        // handle error writing to the file
        close(fd);
        return 1;
    }
    printf("File written!\n");

    close(fd); // close the file
    return 0;
}