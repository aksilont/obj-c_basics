//
//  Character.h
//  HomeWork
//
//  Created by Sky on 15.12.2020.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum StatType {
    HealthPoint,
    Shield,
    ManaPoint,
    Experience
} StatType;

typedef enum ActionType {
    Increase,
    Decrease
} ActionType;

typedef void(^StatBlock)(ActionType action, NSInteger value);

@interface Character : NSObject
@property (nonatomic, readonly) NSInteger healthPoint;
@property (nonatomic, readonly) NSInteger shield;
@property (nonatomic, readonly) NSInteger manaPoint;
@property (nonatomic, readonly) NSInteger experience;

- (void)changeStat:(StatType)stat withAction:(ActionType)action byValue:(NSInteger)value;
@end

NS_ASSUME_NONNULL_END
