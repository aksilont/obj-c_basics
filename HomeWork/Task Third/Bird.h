//
//  Bird.h
//  HomeWork
//
//  Created by Sky on 11.12.2020.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Bird : NSObject
@property (nonatomic, readonly) NSString *name;
- (instancetype)initWithName:(NSString *)name;
@end

NS_ASSUME_NONNULL_END
