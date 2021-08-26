#ifndef SOLVER_H
#define SOLVER_H

#include <stdbool.h>
#include "mouse.h"

// Size of maze 6x6
#define MAZE_SIZE 6

// *******************************************************
// Struct for a cooordinate in the maze
typedef struct Coord
{
    int r;
    int c;
}Coord;

void init_coord (Coord* coord, int row, int col)
{ coord->r = row; coord->c = col; }
// *******************************************************

// *******************************************************
// Queue implemented as circular array
#define QUEUE_SIZE 36
typedef struct Queue 
{
    Coord queue [QUEUE_SIZE];
    int front;
    int insert;
    int size;
}Queue;

void init_queue(Queue* q)
{
    q->front = 0;
    q->insert = 0;
    q->size = 0;
}

void enqueue (Queue* q, Coord pos)
{
    q->queue[q->insert] = pos;
    q->insert = (q->insert + 1) % QUEUE_SIZE;
    q->size += 1;
}

Coord dequeue(Queue* q)
{
    Coord popped = q->queue[q->front];
    q->front = (q->front + 1) % QUEUE_SIZE;
    q->size -= 1;
    return popped;
}

int getSize(Queue* q)
{ return q->size; }
// *******************************************************

Action solver(Mouse *mouse);
Action leftWallFollower(Mouse *mouse);
Action floodFill(Mouse *mouse);

Action getAction(Heading want, Heading current);
void   loadInput(int r, int c, Mouse* mouse);
void   loadAccessible(Coord cur);
int    getMin(Coord cur, int* new_r, int* new_c, Mouse* mouse);
bool   isAccessible(Heading h, int cur_r, int cur_c);
int    min(int n1, int n2) { return n1 < n2 ? n1 : n2; }

#endif
