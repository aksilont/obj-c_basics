//
//  Character.m
//  HomeWork
//
//  Created by Sky on 15.12.2020.
//

#import "Character.h"

@interface Character()
@property (nonatomic, readwrite) NSInteger healthPoint;
@property (nonatomic, readwrite) NSInteger shield;
@property (nonatomic, readwrite) NSInteger manaPoint;
@property (nonatomic, readwrite) NSInteger experience;
@end

@implementation Character

- (void)changeStat:(StatType)stat withAction:(ActionType)action byValue:(NSInteger)value {

    __weak Character *weakSelf = self;
    
    StatBlock changeHP = ^(ActionType action, NSInteger value) {
        if (action == Increase) {
            weakSelf.healthPoint += value;
        } else if (action == Decrease) {
            weakSelf.healthPoint -= value;
        }
    };
    StatBlock changeSheild = ^(ActionType action, NSInteger value) {
        if (action == Increase) {
            weakSelf.shield += value;
        } else if (action == Decrease) {
            weakSelf.shield -= value;
        }
    };
    StatBlock changeMP = ^(ActionType action, NSInteger value) {
        if (action == Increase) {
            weakSelf.manaPoint += value;
        } else if (action == Decrease) {
            weakSelf.manaPoint -= value;
        }
    };
    StatBlock changeExp = ^(ActionType action, NSInteger value) {
        if (action == Increase) {
            weakSelf.experience += value;
        } else if (action == Decrease) {
            weakSelf.experience -= value;
        }
    };
    switch (stat) {
        case HealthPoint:
            changeHP(action, value);
            break;
        case Shield:
            changeSheild(action, value);
            break;
        case ManaPoint:
            changeMP(action, value);
            break;
        case Experience:
            changeExp(action, value);
            break;
        default:
            break;
    }
}

@end
