//
//  Calculator.h
//  HomeWork
//
//  Created by Sky on 10.12.2020.
//

#import <Foundation/Foundation.h>

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

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject

@property (nonatomic) CalcOperation calcOperation;

+ (CalcOperation) defineTypeOperationBy: (char) method;
+ (double) sumA: (double) a andB: (double) b;
+ (double) subtractA: (double) a andB: (double) b;
+ (double) multiplyA: (double) a byB: (double) b;
+ (double) divideA: (double) a byB: (double) b;
+ (double) remainderOfDivisionA: (double) a andB: (double) b;

- (instancetype) init;
- (void) start;
- (void) doOperation: (CalcOperation) operation
               withA: (double) a
                andB: (double) b
          completion: (void(^)(double result, CalcError error)) completion;
- (void) dealloc;
@end

NS_ASSUME_NONNULL_END
