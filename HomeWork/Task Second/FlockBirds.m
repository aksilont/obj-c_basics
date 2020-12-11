//
//  FlockBirds.m
//  HomeWork
//
//  Created by Sky on 11.12.2020.
//

#import "FlockBirds.h"

@implementation FlockBirds
- (instancetype)init {
    if (self = [super init]) {
        NSLog(@"Создание стаи птиц");
    }
    return self;
}

- (void)addBirds:(NSArray *)birdsArr {
    [birdsArr retain];
    [_birds release];
    _birds = birdsArr;
    for (Bird *bird in _birds) {
        NSLog(@"Добавлени птицы %@ в стаю", bird.name);
    }
}

- (void)removeBirds {
    NSLog(@"Уничтожение всех птиц в стае");
    for (Bird *bird in _birds) {
        [bird release];
    }
    [_birds release];
}

- (void)dealloc {
    [self removeBirds];
    NSLog(@"Стая птиц уничтожена!");
    [super dealloc];
}
@end
