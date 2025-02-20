#include <stdio.h>
#include <stdlib.h>

int main()
{
    // The Line below must *NOT* be changed or test will fail!
    srand(1);

    /* -- Solution from here -- */

    // Create a variable to store values
    int dice_rolls[100];
    for (int i = 0; i < 100; i++){
        dice_rolls[i] = (rand() % 6)+1;
        // Check so we get rolls
        //printf("roll: %d\n", dice_rolls[i]);
    }
    // Create a variable to store how many of each
    int one = 0, two = 0, three = 0, four = 0, five = 0, six = 0, sum = 0;
    
    for (int i = 0; i < 100; i++){
        if (dice_rolls[i] == 1){
            one++;
        }
        if (dice_rolls[i] == 2){
            two++;
        }
        if (dice_rolls[i] == 3){
            three++;
        }
        if (dice_rolls[i] == 4){
            four++;
        }
        if (dice_rolls[i] == 5){
            five++;
        }
        if (dice_rolls[i] == 6){
            six++;
        }

        //Also add the number to the total sum
        sum += dice_rolls[i];
        
    }
   
    printf("%d\n",one);
    printf("%d\n",two);
    printf("%d\n",three);
    printf("%d\n",four);
    printf("%d\n",five);
    printf("%d\n",six);
    printf("%d\n",sum);
    float average = sum/100.0;
    printf("%.1f", average);

    /* -- Solution to here -- */

    // Your code goes here

    return 0;
}
