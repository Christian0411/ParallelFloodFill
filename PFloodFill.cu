#include <stdio.h>
#include <sys/time.h>
#include <stdio.h>


#define SIZE 10


// HELPER CODE TO INITIALIZE, PRINT AND TIME
struct timeval start, end;
void starttime() {
  gettimeofday( &start, 0 );
}

void endtime(const char* c) {
   gettimeofday( &end, 0 );
   double elapsed = ( end.tv_sec - start.tv_sec ) * 1000.0 + ( end.tv_usec - start.tv_usec ) / 1000.0;
   printf("%s: %f ms\n", c, elapsed);

}


void flood_fill (int nodeX, int nodeY, int map[SIZE][SIZE])
{
   
    int target = map[nodeX][nodeY];
    if (nodeX < 0) return;
    if (nodeX >= SIZE) return;
    if (nodeY < 0) return;
    if (nodeY >= SIZE) return;
    if (target == 1 ) return;
    if (target != 0) return;
    map[nodeX][nodeY] = 2;


    flood_fill (nodeX + 1, nodeY, map); // East
    flood_fill (nodeX, nodeY + 1, map); // South
    flood_fill (nodeX - 1, nodeY, map); // West
    flood_fill (nodeX, nodeY - 1, map); // North

    return;       
}


void print_array2D (int toPrint[SIZE][SIZE])
{
    for(int i = 0; i < 10; i++)
    {
        for(int j = 0; j < 10; j++)
        {
            printf("%d", toPrint[i][j]);
        }
        printf("\n");
    }

}


int main()
{
    int map [SIZE][SIZE] = {
        {0,0,0,0,0,0,0,0,0,0},
        {0,0,0,0,0,0,0,0,0,0},
        {1,1,1,1,1,1,1,1,1,0},
        {0,0,0,0,0,0,0,0,0,0},
        {0,0,0,0,0,0,0,0,0,0},
        {0,0,0,0,0,0,0,0,0,0}
    };

    starttime();
    flood_fill(0, 0, map);
    endtime("Normal");
    print_array2D(map);
    return 0;
}
