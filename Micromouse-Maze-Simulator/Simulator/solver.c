#include "solver.h"
#include "mouse.h"
#include <stdbool.h>

// This function redirects function calls from mouse.c to the desired maze solving algorithm
Action solver(Mouse *mouse)
{
    return floodFill(mouse);
}

// Global variables for manhattan distances, horizontal & vertical walls
int m_distances [MAZE_SIZE][MAZE_SIZE] = 
    {{10, 9, 8, 7, 6, 5}, 
     {9, 8, 7, 6, 5, 4}, 
     {8, 7, 6, 5, 4, 3}, 
     {7, 6, 5, 4, 3, 2}, 
     {6, 5, 4, 3, 2, 1}, 
     {5, 4, 3, 2, 1, 0}};

// Current position is the back wall. So wall in front is at r+1
int h_walls [MAZE_SIZE + 1][MAZE_SIZE] = 
    {{1, 1, 1, 1, 1, 1}, 
     {0, 0, 0, 0, 0, 0},
     {0, 0, 0, 0, 0, 0},
     {0, 0, 0, 0, 0, 0},
     {0, 0, 0, 0, 0, 0},
     {0, 0, 0, 0, 0, 0},
     {1, 1, 1, 1, 1, 1}};

// Current position is at left wall. So wall on right is c+1
int v_walls [MAZE_SIZE][MAZE_SIZE + 1] =
    {{1, 0, 0, 0, 0, 0, 1}, 
     {1, 0, 0, 0, 0, 0, 1},
     {1, 0, 0, 0, 0, 0, 1},
     {1, 0, 0, 0, 0, 0, 1},
     {1, 0, 0, 0, 0, 0, 1},
     {1, 0, 0, 0, 0, 0, 1}};
Queue queue;

// FloodFill maze-solving algorithm
Action floodFill(Mouse *mouse)
{   
    int r = mouse->y;
    int c = mouse->x;
    // If maze has been solved
    if (r == MAZE_SIZE-1 && c == MAZE_SIZE-1)
        return IDLE;

    Coord cur;
    init_coord(&cur, r, c);

    // Put input from sensors into h_walls and v_walls
    loadInput(r, c, mouse);

    // Determine if there is a cell with a smaller Manhattan Distance
    int new_r = r;
    int new_c = c;
    int min_m_dist = getMin(cur, &new_r, &new_c, mouse);

    if (min_m_dist < m_distances[r][c])
    {
        Heading h = mouse->heading;

        // Case where we want to turn around 180
        if ((h == NORTH && new_r < r) || (h == SOUTH && new_r > r)      
            || (h == WEST && new_c > c) || (h == EAST && new_c < c))
            return LEFT;
        
        // Not turning around 180
        if (new_r > r) return getAction(NORTH, h);
        if (new_r < r) return getAction(SOUTH, h);
        if (new_c > c) return getAction(EAST, h);
        if (new_c < c) return getAction(WEST, h);
    }

    // If not, then adjust the Manhattan distances
    init_queue(&queue);
    enqueue(&queue, cur);
    while (getSize(&queue) != 0)
    {
        Coord front = dequeue(&queue);
        int front_min = getMin(front, &new_r, &new_c, mouse);
        if (m_distances[front.r][front.c] <= front_min)
        {
            m_distances[front.r][front.c] = front_min + 1;
            loadAccessible(front);
        }
    }

    return IDLE;
}

Action getAction(Heading want, Heading current)
{
    switch (want)
    {
        case NORTH:
            if (current == NORTH) return FORWARD;
            if (current == WEST) return RIGHT;
            if (current == EAST) return LEFT;
            break;
        case SOUTH:
            if (current == SOUTH) return FORWARD;
            if (current == WEST) return LEFT;
            if (current == EAST) return RIGHT;
            break;
        case WEST: 
            if (current == WEST) return FORWARD;
            if (current == NORTH) return LEFT;
            if (current == SOUTH) return RIGHT;
        case EAST:
            if (current == EAST) return FORWARD;
            if (current == NORTH) return RIGHT;
            if (current == SOUTH) return LEFT;
            break;
    }
}

// Load the input from the sensors
void loadInput(int r, int c, Mouse* mouse)
{
    int left = getLeftReading(mouse);
    int right = getRightReading(mouse);
    int front = getFrontReading(mouse);

    switch (mouse->heading)
    {
        case NORTH:
            h_walls[r+1][c] = front;
            v_walls[r][c] = left;
            v_walls[r][c+1] = right;
            break;
        case SOUTH:
            h_walls[r][c] = front;
            v_walls[r][c+1] = left;
            v_walls[r][c] = right;
            break;
        case WEST:
            v_walls[r][c] = front;
            h_walls[r][c] = left;
            h_walls[r+1][c] = right;
            break;
        case EAST:
            v_walls[r][c+1] = front;
            h_walls[r+1][c] = left;
            h_walls[r][c] = right;
            break;
    }
}

// Given current row, puts accessible neighbors in the queue
void loadAccessible(Coord cur)
{
    if (isAccessible(SOUTH, cur.r, cur.c))
    {
        Coord c1 = cur;
        c1.r -= 1;
        enqueue(&queue, c1);
    }
    if (isAccessible(NORTH, cur.r, cur.c))
    {
        Coord c2 = cur;
        c2.r += 1;
        enqueue(&queue, c2);
    }
    if (isAccessible(WEST, cur.r, cur.c))
    {
        Coord c3 = cur;
        c3.c -= 1;
        enqueue(&queue, c3);
    }
    if (isAccessible(EAST, cur.r, cur.c))
    {
        Coord c4 = cur;
        c4.c += 1;
        enqueue(&queue, c4);
    }
}

// Return minumum manhattan distances of neighboring cells
int getMin(Coord cur, int* new_r, int* new_c, Mouse* mouse)
{
    int r = cur.r;
    int c = cur.c;
    int cur_min = __INT_MAX__;

    if (isAccessible(SOUTH, r, c))
    {
        cur_min = m_distances[r-1][c];
        *new_r = r-1;
        *new_c = c;
    }
    if (isAccessible(NORTH, r, c))
    {
        cur_min = min(m_distances[r+1][c], cur_min);
        if (cur_min == m_distances[r+1][c]) 
        {
            *new_r = r+1;
            *new_c = c;
        }   
    }
    if (isAccessible(EAST, r, c))
    {
        cur_min = min(m_distances[r][c+1], cur_min);
        if (cur_min == m_distances[r][c+1])
        {
            *new_r = r;
            *new_c = c+1;
        } 
    }
    if (isAccessible(WEST, r, c))
    {
        cur_min = min(m_distances[r][c-1], cur_min);
        if (cur_min == m_distances[r][c-1])
        {
            *new_r = r;
            *new_c = c-1;
        }
    }

    return cur_min;
}

// returns if a coordinate is in Bounds & accessible
bool isAccessible(Heading h, int cur_r, int cur_c)
{
    int result = 0;
    if (h == NORTH) result = h_walls[cur_r + 1][cur_c];
    if (h == SOUTH) result = h_walls[cur_r][cur_c];
    if (h == EAST) result = v_walls[cur_r][cur_c + 1];
    if (h == WEST) result = v_walls[cur_r][cur_c];

    if (result == 0)
        return true;
    return false;
}