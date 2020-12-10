//
//  main.m
//  HomeWork
//
//  Created by Sky on 26.11.2020.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    
    Calculator *calculator = [[Calculator alloc] init];
    [calculator start];
    [calculator release];
    calculator = nil;
    
    NSLog(@"%lu", [calculator retainCount]);
    return 0;
}
