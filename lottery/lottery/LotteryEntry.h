//
//  LotteryEntry.h
//  lottery
//
//  Created by Palaniappan Vairavan on 1/4/15.
//  Copyright (c) 2015 Sivasoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LotteryEntry : NSObject {
    NSDate *entryDate;
    int firstNumber;
    int secondNumber;
}

- (id) initWithEntryDate: (NSDate*) theDate;
- (NSDate *) entryDate;
- (int) firstNumber;
- (int) secondNumber;

@end
