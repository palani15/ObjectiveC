//
//  RandomController.m
//  Random
//
//  Created by Palaniappan Vairavan on 12/18/14.
//  Copyright (c) 2014 Sivasoft. All rights reserved.
//

#import "RandomController.h"

@implementation RandomController

- (IBAction)generate:(id)sender {
    //Generate a number between 1 and 100 inclusive
    int generated;
    generated = (int) (random() % 100 + 1);
    NSLog(@"generated = %d", generated);
    
    // Ask textfield to display generated number
    [textField setIntValue:generated];
}

- (IBAction)seed:(id)sender {
    // Seed the Random number generator
    srandom((unsigned) time(NULL));
    NSLog(@"Random Number Generator Seeded");
    
    //Ask textfield to display the seeded message
    [textField setStringValue:@"Random Number Generator seeded"];
}


@end
