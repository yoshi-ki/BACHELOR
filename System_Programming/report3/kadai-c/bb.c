#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>

pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t bbcond;

int buf[10];
int in = 0;
int out = 0;
int waiting = 0;
int counter = 0;


int bb_get(){
	int val;
	pthread_mutex_lock(&mutex);
	retry:
		if(counter > 0){
		val = buf[out];
		counter--;
		out = (out + 1) % 10;
		if(waiting){
			pthread_cond_signal(&bbcond);
		}
		}
		else{
			waiting++;
			pthread_cond_wait(&bbcond, &mutex);
			waiting--;
			goto retry;
		}
	
	pthread_mutex_unlock(&mutex);
	return val;	
}

void bb_put(int i){
	pthread_mutex_lock(&mutex);
retry:
	if(counter<10){
		buf[in] = i;
		counter++;
		in = (in + 1) % 10;
		if(waiting){
			pthread_cond_signal(&bbcond);
		}
	}
	else{
		waiting++;
		pthread_cond_wait(&bbcond,&mutex);
		waiting--;
		goto retry;
	}


	pthread_mutex_unlock(&mutex);
	return;
}
