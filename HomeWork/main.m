//
//  main.m
//  HomeWork1
//
//  Created by Sky on 26.11.2020.
//

#import <Foundation/Foundation.h>
#import <stdlib.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
                
        // Task 1, 2
        int first;
        int second;
        
        printf("First number: ");
        scanf("%d", &first);
        printf("Second number: ");
        scanf("%d", &second);
        
        int resultOfSum = first + second;
        int resultOfSubtract = first - second;
        int resultOfMultiply = first * second;
        float resultOfDivide = (float)first / (float)second;
        
        NSLog(@"\n---------- TASK 1, 2 ----------"
              "\nFirst number is %d"
              "\nSecond number is %d"
              "\n----------------------------"
              "\nResult of sum = %d"
              "\nResult of subtract = %d"
              "\nResult of multiply = %d"
              "\nResult of divide = %f"
              "\n----------------------------",
              first, second, resultOfSum, resultOfSubtract, resultOfMultiply, resultOfDivide);
        
        // Task 3
        int firstRnd = arc4random_uniform(100);
        int secondRnd = arc4random_uniform(100);
        int thirdRnd = arc4random_uniform(100);
        
        float average = ((float)firstRnd + (float)secondRnd + (float)thirdRnd) / 3.0;
        NSLog(@"\n---------- TASK 3 ----------"
              "\nFirst random number is %d"
              "\nSecond random number is %d"
              "\nThird random number is %d"
              "\n----------------------------"
              "\nAverage is %f"
              "\n----------------------------",
              firstRnd, secondRnd, thirdRnd, average);
    }
    return 0;
}
