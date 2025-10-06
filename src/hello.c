#include <stdio.h>
#include <pthread.h>
#include "hello.h"

void* say_hello(void* arg) {
    int thread_id = *(int*)arg;
    printf("Hello from thread %d!\n", thread_id);
    return NULL;
}
