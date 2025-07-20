
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <stdlib.h>

void main()
{
	int i;

	fork();
	fork();
	fork();
	printf("the process is created using fork() system call\n");

	/*
	i=fork();

	if(i>0)
	{
	printf("parent process\n");
	printf("parent process value of i=%d\n",i);
	printf("id of the parent process=%d\n",getpid());
	printf("id of the parent of the parent process=%d\n",getppid());
	wait();
	sleep(5);
	}
	else
	{
	printf("child process\n");
	printf("child process value of i=%d\n",i);
	printf("id of the child process=%d\n",getpid());
	printf("id of the parent of the child  process=%d\n",getppid());
	wait();
	}

	*/
	// printf("the process is created using fork() system call\n");

	/*

	   int a=10;
	   if(fork()==0)
	   {
	   a=a+5;
	   printf("%d\t%d\n",a,&a);
	   }
	  else
	   {
	   a=a-5;
	   printf("%d\t%d\n",a,&a);
	   }
	  */

	/*

	 fork();
	 fork() && fork() || fork();
	 fork();

	 printf("forked\n");
	 */

	/*zombie process*/

	/*
	  int child_pid=fork();

	  if (child_pid > 0)
	  sleep(10);
	  else
	  {
	 printf("child");
	 exit(0);
	}
	*/

	/* orphan process*/
	/*

	int child_pid=fork();

	if (child_pid > 0)
	printf("parent");
	else
	{
	sleep(30);
	printf("child");
	}

   */
	/* read write*/

	/*
	 int n;
	 char a[300];
	 n=read(0,a,20);
	 write(1,a,n);

	  */

	/* pipe*/

	/*
	int a[2],i,n;
	char ch[100];
	pipe(a);
	//a[0]=read
	//a[1]=write


	i=fork();

	if(i>0)
	{
	write(a[1],"we are here",12);
	}
	else
	{
	n=read(a[0],ch,12);
	write(1,ch,n);
	}


	i=fork();
	if(i>0)
	{
	int x;
	close(a[0]);
	printf("enter no\n");
	scanf("%d",&x);
	write(a[1],&x,sizeof(int));
	close(a[1]);

	}

	else
	{
	int y;
	close(a[1]);
	read(a[0],&y,sizeof(int));
	close(a[0]);
	printf("y=%d\n",y);

	}


  */
}
