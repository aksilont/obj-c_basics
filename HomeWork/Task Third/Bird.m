//
//  Bird.m
//  HomeWork
//
//  Created by Sky on 11.12.2020.
//

#import "Bird.h"

@implementation Bird
- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        _name = name;
        NSLog(@"Создание птицы - %@", name);
    }
    return self;
}
- (void)dealloc {
    NSLog(@"Уничтожение птицы - %@", _name);
}
@end
