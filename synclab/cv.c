#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <time.h>
#include <pthread.h>
#ifdef __APPLE__
#include <dispatch/dispatch.h>
#else
#include <semaphore.h>
#endif

/******************************************************
 *
 * Partner 1:
 *
 * Partner 2: 
 *
 ******************************************************/


// Club Struct
typedef struct club {
  int goth_count;     // num goths in club
  int hipster_count;  // num hipsters in club
  int capacity;       // max capacity of club
} club_t;

// Global Variables
int NUMGOTH = 3;
int NUMHIPSTER = 3;
int CAPACITY = 6;
club_t daclub;


// Club initialization function
void club_init(club_t *club, int capacity){
  club->goth_count = 0;
  club->hipster_count = 0;
  club->capacity = capacity; 
}

void sanitycheck(club_t * club){
  if(club->goth_count > 0 && club->hipster_count > 0){
    printf("sync error: bad social mixup! Goths = %d, Hipsters = %d\n", 
	   club->goth_count, club->hipster_count);
    exit(1);
  }
  if(club->goth_count > club->capacity || club->hipster_count>club->capacity){
    printf("sync error: too many people in the club! Goths = %d, Hipsters = %d\n", club->goth_count, club->hipster_count);
    exit(1);
  }
  if(club->goth_count < 0 || club->hipster_count < 0){
    printf("sync error: lost track of people! Goths = %d, Hipsters = %d",
	   club->goth_count, club->hipster_count);
    exit(1);
  }
}

void goth_enter(club_t * club){
  club->goth_count++;
  sanitycheck(club);
}

void goth_exit(club_t * club){
  club->goth_count--;
  sanitycheck(club);
}

void hipster_enter(club_t * club){
  club->hipster_count++;
  sanitycheck(club);
}

void hipster_exit(club_t * club){
  club->hipster_count--;
  sanitycheck(club);
}

void hangout(){
  sleep(rand() % 2);
}



void * goth_thread(void * vargp){
  int id = *((int *) vargp);

  while(1){
    printf("goth #%d: wants to enter\n", id);
    goth_enter(&daclub);
    printf("goth #%d: in the club\ngoths in club: %d\n", id, 
	   daclub.goth_count);
    hangout();
    goth_exit(&daclub);
    printf("goth #%d: left the club\ngoths in club: %d\n", id, 
	   daclub.goth_count);    
  }
}

void * hipster_thread(void * vargp){
  int id = *((int *) vargp);

  while(1){
    printf("hipster #%d: wants to enter\n", id);
    hipster_enter(&daclub);
    printf("hipster #%d: in the club\nhipsters in club: %d\n", id, 
	   daclub.hipster_count);
    hangout();
    hipster_exit(&daclub);
    printf("hipster #%d: left the club\nhipsters in club: %d\n", id, 
	   daclub.hipster_count);    
  }
}


int main(int argc, char **argv){
  int goth_ids[NUMGOTH];
  int hipster_ids[NUMHIPSTER];
  pthread_t thread_id;
  int i;

  club_init(&daclub, CAPACITY);

  for(i = 0; i < NUMGOTH; i++){
    goth_ids[i] = i;
    pthread_create(&thread_id, NULL, goth_thread, &(goth_ids[i]));
  }
  for(i = 0; i < NUMHIPSTER; i++){
    hipster_ids[i] = i;
    pthread_create(&thread_id, NULL, hipster_thread, &(hipster_ids[i]));
  }

  pthread_join(thread_id, NULL);
}
