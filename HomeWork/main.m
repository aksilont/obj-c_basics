//
//  main.m
//  HomeWork
//
//  Created by Sky on 26.11.2020.
//

#import <Foundation/Foundation.h>

void task1() {
    NSString *world = @"World";
    NSArray *arr = @[@"Hello", @", ", world, @"!"];
    
    for (NSString *item in arr) {
        NSLog(@"%@", item);
    }
}

void task2() {
    
}

void task3() {
    
    enum Gender {
        Male,
        Female
    };
    typedef enum Gender Gender;
    
    typedef NS_ENUM(NSString, MyEnum) {
        Male = @"male",
        Female = @"female"
    };
    
    struct Human {
        NSString *name;
        NSInteger age;
        Gender gender;
    };
    typedef struct Human Human;
    
    Human Ann;
    Ann.name = @"Ann";
    Ann.age = 21;
    Ann.gender = Male;
    
    NSLog(@"Name - %@, age - %li, gender - %u", Ann.name, (long)Ann.age, Ann.gender);
    
}

void homeWork3() {
//    task1();
//    task2();
    task3();
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        homeWork3();
    }
    return 0;
}
