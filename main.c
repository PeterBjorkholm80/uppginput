#include <stdio.h>


int main()
{
    
    /* -- Solution from here -- */

    char name[20];
    int age;

    //printf("What is your name?");
    scanf("%s", name); // Read a string (without spaces)
    printf("%s\n", name);
    //printf("How old are you?");
    scanf("%d", &age);   // Read an integer
    printf("%d", age);

    /* -- Solution to here -- */
    // Your code goes here

    return 0;
}
