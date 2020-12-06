//
//  Student.m
//  HomeWork
//
//  Created by Sky on 05.12.2020.
//

#import "Student.h"

@implementation Student

- (instancetype)initWithName: (NSString *)name surname: (NSString *)surname age: (NSInteger)age{
    self = [super init];
    if (self) {
        _name = name;
        _surname = surname;
        _age = age;
    }
    return self;
}

- (void)increaseAge {
    _age++;
}

//- (void)setName:(NSString *)name {
//    _name = [NSString stringWithFormat: @"%@", name];
//}
//
//- (void)setSurname:(NSString *)surname {
//    _surname = [NSString stringWithFormat:@"%@", surname];
//}

- (NSString *)returnFullName {
    return [NSString stringWithFormat:@"%@ %@", _name, _surname];
}

- (NSString *)fullName {
    return [self returnFullName];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@ (age: %ld)", self.fullName, self.age];
}

@end
