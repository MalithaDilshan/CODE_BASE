#include <stdio.h>
#include <stdlib.h>
#include "StackAndQueue.h"

#define NO_OF_ELEMENTS 100000  //define the number of the elements.

// build the structures

// for satck
typedef struct mal {
   int value;
   struct mal *next;
 }node;

typedef struct stack{
   node *current;
   node *numbers;
 }Stack;
// for queue
typedef struct mal1 {
   int value;
   struct mal1 *next;
 }node1;

typedef struct queue{
   node1 *current;
   node1 *numbers;
 }Queue;

int count;
int count1;


Stack* CreateStack(){
	Stack *stk;   // create a stk( give a memory allocation for the stk)
	stk=(Stack*)malloc(sizeof(Stack));
	stk->numbers=NULL;
	stk->current=NULL;
	
	return stk;
}

int DeleteStack(Stack* stack){
	if(count==0){
		return -1;
	}
	else{
	//delete the queue one by one using a for loop(deallocate the memory that use for store values and the addresses.
	for (stack -> current = stack -> numbers; stack -> current != NULL; stack -> current = stack -> current -> next){
		free(stack->current);
   }
	// deallocate the memory of the stack.
		free(stack);
	}
	return 0;	
}

  
int StackPush(Stack* stack, int value){
	if(count==NO_OF_ELEMENTS){
		return 0;
	}
	else{
	
	
	stack->current=(node*)malloc(sizeof(node)); // allocte the memory for the satck
	stack->current->value=value;
	stack->current->next=stack->numbers;    // linking with other stack nodes.
   	stack->numbers=stack->current; 
      }
   	count ++; // counting
		
return 0;
}

int StackPop(Stack* stack, int* value){
    if (count==0){
		return -1;
	}
	else{
    *value=stack->current->value;
	free(stack->current);      // deallocate the momory in the stack.     
	stack->current=stack->current->next;
	stack->numbers=stack->current;
  }
    count--;  
    
  
return 0;
}


int StackPeek(const Stack* stack, int* value){
	
	if(count==0){
		return 0;
	}
	else{
	// get the peek value of the satck.
	*value=stack->current->value;
   }
return *value;
}



Queue* CreateQueue(){
	Queue *que;  //allocate the memory for the que which in type Queue.
	que=(Queue*)malloc(sizeof(Queue));
	que->numbers=NULL;
	que->current=NULL;
	
	return que;

}

int DeleteQueue(Queue* queue){
	
	if(count1==0){
		return -1;
	}
	else{
	//delete the queue one by one using a for loop(deallocate the memory that use for store values and the addresses.
	for (queue -> current = queue -> numbers; queue -> current != NULL; queue -> current = queue -> current -> next){
		free(queue->current);
   }
    // free the whole queue(for deallocate the memory of the current and the numbers.
		free(queue);
    }
	return 0;
}

int QueueEnqueue(Queue* queue, int value){
	if(count1== NO_OF_ELEMENTS){
		return 0;
	}
	else{
    queue->current=(node1*)malloc(sizeof(node1)); // allocate the memory for include the values and the addresses.
	queue->current->value=value;  //enter the values
	queue->current->next=queue->numbers;  //make the link for other stack nodes.
   	queue->numbers=queue->current; 
    }
   	count1 ++; // counting
return 0;
}

int QueueDequeue(Queue* queue, int* value){
	if(count1==0){
		return 0;
	}
	else{
	
	node1 * previous ;
	
	// using this for loop we can get the previous node.
    for (queue -> current = queue -> numbers; queue -> current->next != NULL; queue -> current = queue -> current -> next){
	      previous=queue->current;
   }
    *value=queue->current->value;
    
    free(queue->current->next);  // free the last node.
	previous->next=NULL; 
   
    count1--;
   } 
   return 0;
}

int QueuePeek(const Queue* queue, int* value){
	if(count1==0){
		return 0;
	}
	else{
	*value = queue->current->value; // get the peek value of the queue.
     }

return *value;  // return the value
}


