//
//  FlockBirds.h
//  HomeWork
//
//  Created by Sky on 11.12.2020.
//

#import <Foundation/Foundation.h>
#import "Bird.h"
NS_ASSUME_NONNULL_BEGIN

@interface FlockBirds : NSObject
@property (nonatomic, strong) NSArray *birds;
- (void)addBirds:(NSArray *)birdsArr;
@end

NS_ASSUME_NONNULL_END
