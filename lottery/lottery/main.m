//
//  main.m
//  lottery
//
//  Created by Palaniappan Vairavan on 1/4/15.
//  Copyright (c) 2015 Sivasoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LotteryEntry.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create Date , Calendar and DateComponents objects
        NSDate *now = [[NSDate alloc] init];
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSDateComponents *weekComponents = [[NSDateComponents alloc] init];
        
        
        NSMutableArray *array;
        array = [[NSMutableArray alloc] init];
        
        //seed random number generators
        srandom((unsigned) time(NULL));
        
        int i;
        for(i=0; i<10; i++) {
            
            
            [weekComponents setWeekdayOrdinal:i];
            
            //Create Date/time object that is 'i' weeks from now
            NSDate *iWeeksFromNow;
            iWeeksFromNow = [cal dateByAddingComponents:weekComponents toDate:now options:0];
            
            //Create New instance of Lottery Entry
            LotteryEntry *newEntry = [[LotteryEntry alloc] initWithEntryDate:iWeeksFromNow];
            
            //Add Lottery Entry Object to an Array
            [array addObject:newEntry];
        }
        
        for(LotteryEntry *entryToPrint in array) {
            NSLog(@"%@", entryToPrint);
        }
    }
    return 0;
}
