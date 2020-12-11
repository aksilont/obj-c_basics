//
//  main.m
//  HomeWork
//
//  Created by Sky on 26.11.2020.
//

#import <Foundation/Foundation.h>
#import "FlockBirds.h"
#import "Bird.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        NSLog(@"          TASK 3");
        
        FlockBirds *flockBirds = [[FlockBirds alloc] init];
        
        Bird *bird1 = [[Bird alloc] initWithName:@"Starling"];
        Bird *bird2 = [[Bird alloc] initWithName:@"JackDaw"];
        Bird *bird3 = [[Bird alloc] initWithName:@"Crow"];
        Bird *bird4 = [[Bird alloc] initWithName:@"Goose"];
        Bird *bird5 = [[Bird alloc] initWithName:@"Stork"];
        Bird *bird6 = [[Bird alloc] initWithName:@"Starling"];
        
        NSArray *birdsArr = [[NSArray alloc] initWithObjects:bird1, bird2, bird3, bird4, bird5, bird6, nil];
        
        [flockBirds addBirds:birdsArr];
    }
    return 0;
}
