#include <stdio.h>
#include <math.h>

int main(void)
{
    float a[100][100], x, u1, u, y;
    int i, j, n, fact;
    
    //Taking in our inputs (number of terms, values of X and Y, the value to interpolate at)
    printf("\nEnter no. of terms: ");
    scanf("%d", &n);
    
    printf("\nEnter values of X: \n");
    for(i = 0; i < n; i++)
    {
        scanf("%f", &a[i][0]);
    }
    printf("\nEnter values of Y: \n");
    for(i = 0; i < n; i++)
    {
        scanf("%f", &a[i][1]);
    }

    printf("\nEnter the value to interpolate at: ");
    scanf("%f", &x);

    //Finding the difference table
    for(j = 2; j < n+1; j++)
    {
        for(i=0; i<n-j+1; i++)
        {
            a[i][j] = a[i+1][j-1] - a[i][j-1];
        }
    }

    //Print difference table
    printf("\nThe difference table is as follows:\n");
    for(i = 0; i<n; i++)
    {
        for(j = 0; j<=n-i; j++)
        {
            printf("%f ", a[i][j]);
        }
        printf("\n");
    }

    //Find u
    u = (x - a[0][0])/(a[1][0] - a[0][0]);

    //Initial y, u1, k
    y = a[0][1];
    u1 = u;
    fact = 1;

    for(i = 2; i <= n; i++)
    {
        y = y + (u1*a[0][i])/fact;
        //Update k and u1
        fact = fact*i;
        u1 = u1*(u-(i-1));
    }

    printf("\n\nValue at X = %f is Y = %f", x, y);

    return 0;
}