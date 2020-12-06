//
//  Student.h
//  HomeWork
//
//  Created by Sky on 05.12.2020.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *surname;
@property (nonatomic, readonly) NSString *fullName;
@property (nonatomic, readonly) NSInteger age;

- (instancetype)initWithName: (NSString *)name surname: (NSString *)surname age: (NSInteger)age;

- (void) increaseAge;

@end

NS_ASSUME_NONNULL_END
