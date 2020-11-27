//
//  main.m
//  HomeWork
//
//  Created by Sky on 26.11.2020.
//

#import <Foundation/Foundation.h>

//MARK: - Task 1 release

void task1FirstRelease() {
    char word;
    
    NSArray *alphabet = @[
        @"a", @"b", @"c", @"d", @"e", @"f", @"g", @"h", @"i", @"j", @"k", @"l", @"m",
        @"n", @"o", @"p", @"q", @"r", @"s", @"t", @"u", @"v", @"w", @"x", @"y", @"z"
    ];
    
    printf("Введите букву английского алфавита: ");
    scanf("%s", &word);
    
//    NSString *userInput = [NSString stringWithCString: &word encoding: 1];
    NSString *userInput = [NSString stringWithFormat: @"%c", word];
    
    bool included = false;
    int number = 0;
    
    for (NSString *item in alphabet) {
        number++;
        if ([item isEqualToString: userInput]) {
            included = true;
            break;
        }
    }
    
    if (included) {
        printf("Буква %c входит в английский алфавит и стоит на %d месте в алфавите", word, number);
    } else {
        printf("Символ %c не является буквой английского алфавита", word);
    }
}

void task1SecondRelease() {
    char word;
    NSString *alphabetString = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    
    printf("Введите букву английского алфавита: ");
    scanf("%s", &word);
    
    NSString *userInput = [NSString stringWithFormat: @"%c", word];
    if ([alphabetString containsString:userInput]) {
        printf("Буква %c входит в английский алфавит", word);
    } else {
        printf("Символ %c не является буквой английского алфавита", word);
    }
}

//MARK: - Task 2 release

int sum(int a, int b) {
    return a + b;
}
int subtract(int a, int b) {
    return a - b;
}
int multiply(int a, int b) {
    return a * b;
}
float divide(int a, int b) {
    return (float)a / (float)b;
}
int remainderOfDivision(int a, int b) {
    return a % b;
}

int calculate(char method, int a, int b) {
    switch (method) {
        case '+':
            return sum(a, b);
        case '-':
            return subtract(a, b);
        case '*':
            return multiply(a, b);
        case '/':
            return divide(a, b);
        case '%':
            return remainderOfDivision(a, b);
        default:
            printf("Неизвестный метод\n");
            return -1;
    }
}

void task2() {
    int first;
    int second;
    bool next = true;
    char method;
    int result;
    
    do {
        printf("Введите первое число: ");
        scanf("%d", &first);
        
        printf("Введите второе число: ");
        scanf("%d", &second);
        
        printf("Действие (+, -, *, /, %%) (для выхода введите 0): ");
        scanf("%s", &method);
        
        if (method == '0') {
            next = false;
            break;
        } else {
            result = calculate(method, first, second);
            if (result == -1) {
                next = false;
                break;
            }
            next = true;
            printf("%d %c %d = %d", first, method, second, result);
            printf("\n-----------------------------------\n");
        }
    } while (next);
}

//MARK: - Main

void homeWork2() {
    NSLog(@"\n---------------TASK 1--------------------\n");
    task1SecondRelease();
    printf("\n---------------------------------------\n");
    NSLog(@"\n---------------TASK 2--------------------\n");
    task2();
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        homeWork2();
    }
    return 0;
}
