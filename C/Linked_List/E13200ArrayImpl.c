#include<stdio.h>
#include<stdlib.h>
#include "StackAndQueue.h"

#define NO_OF_ELEMENTS 100000

typedef struct stack {
   int size;
   int *numbers;

 }Stack;

 typedef struct queue {
   int size;
   int *numbers;

 }Queue;


Stack* CreateStack(){
	Stack *stk;  // to create the stack we should first allocate the memory of this stk.
	stk=(Stack*)malloc(sizeof(Stack));
	stk->size =0;  // initiate the array size as the zero
	stk->numbers=(int*)malloc(sizeof(int)*NO_OF_ELEMENTS);  // build the memory lacations which can enter numbers in it

	return stk;
}

int DeleteStack(Stack* stack){
   
   free(stack->numbers);  
   free(stack);   // deallocate the whole memory useage.
   stack->size=0;

  return 0;
}

int StackPush(Stack* stack, int value){
	if(stack->size==NO_OF_ELEMENTS){
		return -1;   // can't push the values because the stack array if full
	}
	else{
		
		stack->numbers[stack->size++]=value;
	}

return 0;
}
int StackPop(Stack* stack, int* value){
	if(stack->size==0){
		return -1;     // return the error to main function.
	}
	else{
	   *value=stack->numbers[--(stack->size)]; // here the size of the array will reduse one by one
                }

	return 0;
}

int StackPeek(const Stack* stack, int* value){
	if(stack->size==0){
		return -1;
	}else{    // get the peek value.
		*value=stack->numbers[stack->size];
	}
return *value;
}


Queue* CreateQueue(){
	Queue *que;     // here create a space to include the size and *numbers 

	que=(Queue*)malloc(sizeof(Queue));
	que->size =0; 
// this will allocate the memory to enter numbers as a array.
	que->numbers=(int*)malloc(sizeof(int)*NO_OF_ELEMENTS);

	return que;

}

int DeleteQueue(Queue* queue){
	free(queue->numbers);
        free(queue);  //deallocate whole memoey that use to enter the numbers and athor variables(size and *numbers)
        queue->size=0;
	return 0;
}

int QueueEnqueue(Queue* queue, int value){
        if(queue->size==NO_OF_ELEMENTS){
	 return -1;  //return the error.
	}
	else{
		
		queue->numbers[queue->size]=value;
		queue->size=queue->size+1;
	}
return 0;
}

int QueueDequeue(Queue* queue, int* value){
    int i;
	if(queue->size<1){   //return the error.
		return -1;
	}else{
		*value=queue->numbers[0];
		for(i=0;i<(queue->size);i++){
		 queue->numbers[i]=queue->numbers[i+1];// assign the values to previous position and make the array
		}
		(queue->size)--; // reduce the size(queue->size) one by one
		
     }
	return 0;
}

int QueuePeek(const Queue* queue, int* value){
	if(queue->size==0){
		return -1; 
	}else{
		*value=queue->numbers[0];  // to get the peek value
	}
	return *value;
}

