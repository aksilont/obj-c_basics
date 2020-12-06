//
//  main.m
//  HomeWork
//
//  Created by Sky on 26.11.2020.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *student1 = [[Student alloc] initWithName:@"Tom" surname:@"Soyer" age:23];
        Student *student2 = [[Student alloc] initWithName:@"Bob" surname:@"Marlin" age:20];
        Student *student3 = [[Student alloc] initWithName:@"Vin" surname:@"Diesel" age:21];
        Student *student4 = [[Student alloc] initWithName:@"Riki" surname:@"Bisson" age:22];
        
        NSArray * students = [NSArray arrayWithObjects:student1, student2, student3, student4, nil];
        for (Student *item in students) {
            NSLog(@"%@", item);
        }
        
        [students[2] increaseAge];
        NSLog(@"%@", students[2]);
        
        Student *student = [[Student alloc] initWithName:@"Nik" surname:@"Rasmus" age:30];
        NSLog(@"%@", student);
//        [student setName:@"Rick"];
//        [student setSurname:@"Evangard"];
        student.name = @"Rick";
        student.surname = @"Evangard";
        [student increaseAge];
        NSString *fullName = [student fullName];
        NSLog(@"%@", fullName);
        NSLog(@"%@", student);
    }
    return 0;
}
