//
//  main.m
//  HomeWork
//
//  Created by Sky on 26.11.2020.
//

#import <Foundation/Foundation.h>
#import "Character.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Character *shtainer = [Character new];
        
        [shtainer changeStat:Experience withAction:Increase byValue:100];
        NSLog(@"(increase)EXP = %ld", (long)shtainer.experience);
        
        [shtainer changeStat:Experience withAction:Decrease byValue:67];
        NSLog(@"(decrease)EXP = %ld", (long)shtainer.experience);
        
        [shtainer changeStat:HealthPoint withAction:Increase byValue:10000];
        NSLog(@"(increase)HP = %ld", (long)shtainer.healthPoint);
        
        [shtainer changeStat:HealthPoint withAction:Decrease byValue:4254];
        NSLog(@"(decrease)HP = %ld", (long)shtainer.healthPoint);
        
        [shtainer changeStat:ManaPoint withAction:Increase byValue:20234];
        NSLog(@"(increase)MP = %ld", (long)shtainer.manaPoint);
    }
    return 0;
}
