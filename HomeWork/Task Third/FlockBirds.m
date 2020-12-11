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
    _birds = birdsArr;
    for (Bird *bird in _birds) {
        NSLog(@"Добавлени птицы %@ в стаю", bird.name);
    }
}

- (void)dealloc {
    NSLog(@"Стая птиц уничтожена!");
}
@end
