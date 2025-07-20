#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/shm.h>
#include <string.h>
void main()
{
    void *shared_memory;
    char buff[100];
    int shmid;
    shmid = shmget((key_t)1100, 1024, 0666);
    printf("key of shared memory is %d\n", shmid);
    shared_memory = shmat(shmid, NULL, 0);
    printf("process attached at %p\n", shared_memory);
    printf("we write :%s\n", (char *)shared_memory);
}
