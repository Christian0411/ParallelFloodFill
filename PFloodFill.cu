#include <stdio.h>

void flood_fill (int nodeX, int nodeY, int map[6][6])
{
   
    int target = map[nodeX][nodeY];
    if (nodeX < 0) return;
    if (nodeX >= 6) return;
    if (nodeY < 0) return;
    if (nodeY >= 6) return;
    if (target == 1 ) return;
    if (target != 0) return;
    map[nodeX][nodeY] = 2;


    flood_fill (nodeX + 1, nodeY, map); // East
    flood_fill (nodeX, nodeY + 1, map); // South
    flood_fill (nodeX - 1, nodeY, map); // West
    flood_fill (nodeX, nodeY - 1, map); // North

    return;       
}


void print_array2D (int toPrint[6][6])
{
    for(int i = 0; i < 6; i++)
    {
        for(int j = 0; j < 6; j++)
        {
            printf("%d", toPrint[i][j]);
        }
        printf("\n");
    }

}


int main()
{
    int map [6][6] = {
        {0,0,0,0,0,0},
        {0,1,1,1,1,0},
        {0,1,0,0,1,0},
        {0,1,0,0,1,0},
        {0,1,1,1,1,0},
        {0,0,0,0,0,0}
    };

    flood_fill(0, 0, map);
    print_array2D(map);
    return 0;
}
