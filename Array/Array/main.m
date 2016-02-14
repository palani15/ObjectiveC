//
//  main.m
//  Array
//
//  Created by Palaniappan Vairavan on 1/4/15.
//  Copyright (c) 2015 Sivasoft. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableArray *array;
        array = [[NSMutableArray alloc] init];
        int i;
        for( i = 0; i < 10 ; i++) {
            NSNumber *newNumber;
            newNumber = [[NSNumber alloc] initWithInt: (i * 3)];
            [array addObject:newNumber];
        }
        
        for( i = 0; i <10; i++) {
            NSNumber *numberToPrint = [array objectAtIndex: i ];
            NSLog(@"The number at index %d is %@", i , numberToPrint);
        }
    }
    return 0;
}
