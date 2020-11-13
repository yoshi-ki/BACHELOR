#include <unistd.h>
#include <pthread.h>

void *test(void *arg){
	sleep(1);
	return NULL;
}

int main(int argc, char **argv){
	pthread_t th;

	pthread_create(&th, NULL, &test, NULL);
	pthread_exit(0);
	return 0;
}
