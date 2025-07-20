#include <stdio.h>
#include <unistd.h>
#include <pthread.h>

void *f()
{
    int i = 0;

    printf("A");
    printf("B");
}

void main()
{
    int i = 0;

    pthread_t t1, t2;

    pthread_create(&t1, NULL, &f, NULL);
    pthread_create(&t2, NULL, &f, NULL);

    pthread_join(t1, NULL);
    pthread_join(t2, NULL);
}
