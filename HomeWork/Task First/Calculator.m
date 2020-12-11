//
//  Calculator.m
//  HomeWork
//
//  Created by Sky on 10.12.2020.
//

#import "Calculator.h"

@implementation Calculator

+ (CalcOperation)defineTypeOperationBy:(char)method {
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

+ (double)sumA:(double)a andB:(double)b {
    return a + b;
}
+ (double)subtractA:(double)a andB:(double)b {
    return a - b;
}
+ (double)multiplyA:(double)a byB:(double)b {
    return a * b;
}
+ (double)divideA:(double)a byB:(double)b {
    return a / b;
}
+ (double)remainderOfDivisionA:(double)a andB:(double)b {
    return (int)a % (int)b;
}

- (instancetype)init {
    if (self = [super init]) {
        NSLog(@"Калькулятор инициализирован. Счетчик ссылок = %lu.", (unsigned long)[self retainCount]);
    }
    return self;
}

- (void)doOperation:(CalcOperation)operation
              withA:(double)a
               andB:(double)b
         completion:(void(^)(double result, CalcError error))completion {
    switch (operation) {
        case Sum:
            completion([Calculator sumA:a andB:b], None);
            break;
        case Subtract:
            completion([Calculator subtractA:a andB:b], None);
            break;
        case Multiply:
            completion([Calculator multiplyA:a byB:b], None);
            break;
        case Divide:
            if (b == 0) {
                completion(0, DivideByZero);
            } else {
                completion([Calculator divideA:a byB:b], None);
            }
            break;
        case RemainderOfDivision:
            completion([Calculator remainderOfDivisionA:a andB:b], None);
            break;
        default:
            completion(0.0, WrongOperation);
            break;
    }
}

- (void)start {
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
            CalcOperation typeOperation = [Calculator defineTypeOperationBy:method];
            [self doOperation:typeOperation
                              withA:first
                               andB:second
                         completion:^(double result, CalcError error) {
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
            }];
            next = YES;
        }
    } while (next);
}

- (void)dealloc {
    NSLog(@"Калькулятор удален! Dealloc completed!");
    [super dealloc];
}

@end
