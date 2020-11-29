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
    if ([alphabetString containsString: userInput]) {
        printf("Буква \"%c\" входит в английский алфавит", word);
    } else {
        printf("Символ \"%c\" не является буквой английского алфавита", word);
    }
}

//MARK: - Task 2 release

double sum(double a, double b) {
    return a + b;
}
double subtract(double a, double b) {
    return a - b;
}
double multiply(double a, double b) {
    return a * b;
}
double divide(double a, double b) {
    return a / b;
}
double remainderOfDivision(double a, double b) {
    return (int)a % (int)b;
}

void calculate(char method, double a, double b, void (^completion) (double)) {
    switch (method) {
        case '+':
            completion(sum(a, b));
            break;
        case '-':
            completion(subtract(a, b));
            break;
        case '*':
            completion(multiply(a, b));
            break;
        case '/':
            completion(divide(a, b));
            break;
        case '%':
            completion(remainderOfDivision(a, b));
            break;
        default:
            printf("\n-----------------------------------");
            printf("\nОшибка ввода данных.\nПопробуйте еще раз!");
            printf("\n-----------------------------------\n");
            break;
    }
}

void task2() {
    double first;
    double second;
    BOOL next;
    char method;
    
    do {
        first = 0.0;
        second = 0.0;
        method = '0';
        
        printf("Введите первое число: ");
        scanf("%lg", &first);
        
        printf("Введите второе число: ");
        scanf("%lg", &second);
        
        printf("Действие (+, -, *, /, %%) (для выхода введите 0): ");
        scanf("%s", &method);
        
        if (method == '0') {
            next = NO;
        } else {
            calculate(method, first, second, ^(double result) {
                printf("%lg %c %lg = %lg", first, method, second, result);
                printf("\n-----------------------------------\n");
            });
            next = YES;
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
