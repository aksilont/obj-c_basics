//
//  main.m
//  HomeWork
//
//  Created by Sky on 26.11.2020.
//

#import <Foundation/Foundation.h>

//MARK: - Task 1 Release

void task1() {
    NSString *world = @"World";
    NSArray *arr = @[@"Hello", @", ", world, @"!"];
    
    for (NSString *item in arr) {
        NSLog(@"%@", item);
    }
}

//MARK: - Task 2 Release

enum CalcError {
    None,
    DivideByZero,
    WrongOperation
};
typedef enum CalcError CalcError;

enum CalcOperation {
    Sum,
    Subtract,
    Multiply,
    Divide,
    RemainderOfDivision,
    Undefined
};
typedef enum CalcOperation CalcOperation;

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

void calculateOperation(CalcOperation method, double a, double b, void (^completion) (double, CalcError)) {
    switch (method) {
        case Sum:
            completion(sum(a, b), None);
            break;
        case Subtract:
            completion(subtract(a, b), None);
            break;
        case Multiply:
            completion(multiply(a, b), None);
            break;
        case Divide:
            if (b == 0) {
                completion(divide(a, b), DivideByZero);
            } else {
                completion(divide(a, b), None);
            }
            break;
        case RemainderOfDivision:
            completion(remainderOfDivision(a, b), None);
            break;
        default:
            completion(0.0, WrongOperation);
            break;
    }
}

CalcOperation defineTypeOperation(char method) {
    switch (method) {
        case '+':
            return Sum;
        case '-':
            return Subtract;
        case '*':
            return Multiply;
        case '/':
            return Divide;
        case '%':
            return RemainderOfDivision;
        default:
            return Undefined;
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
            CalcOperation typeOperation = defineTypeOperation(method);
            calculateOperation(typeOperation, first, second, ^(double result, CalcError error) {
                if (error == None) {
                    printf("%lg %c %lg = %lg", first, method, second, result);
                    printf("\n-----------------------------------\n");
                } else if (error == DivideByZero) {
                    printf("Попытка деления на 0\nПопробуйте еще раз!\n");
                } else if (error == WrongOperation) {
                    printf("\n-----------------------------------");
                    printf("\nОшибка ввода данных.\nПопробуйте еще раз!");
                    printf("\n-----------------------------------\n");
                } else {
                    printf("Неопознанная ошибка вычисления!");
                }
            });
            next = YES;
        }
    } while (next);
}

//MARK: - Task 3 Release

enum Gender {
    Male,
    Female
};
typedef enum Gender Gender;

NSString *genderString (Gender input) {
    NSString *result = nil;

    switch(input) {
        case Male:
            result = @"male";
            break;
        case Female:
            result = @"female";
            break;
        default:
            result = @"unknown";
    }
    return result;
}

struct Human {
    NSString *name;
    NSInteger age;
    Gender gender;
};
typedef struct Human Human;

void printHuman(Human human) {
    NSLog(@"Name - %@, age - %li, gender - %@", human.name, (long)human.age, genderString(human.gender));
}

void task3() {
    Human ann;
    ann.name = @"Ann";
    ann.age = 21;
    ann.gender = Female;
    printHuman(ann);
    
    Human tom = {@"Tom", 30, Male};
    printHuman(tom);
    
    printHuman((Human){@"Bob", 45, Male});
    printHuman((Human){@"Mia", 25, Female});
}

void homeWork3() {
//    task1();
    task2();
//    task3();
}

//MARK: - Main

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        homeWork3();
    }
    return 0;
}
