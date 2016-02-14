//
//  LotteryEntry.m
//  lottery
//
//  Created by Palaniappan Vairavan on 1/4/15.
//  Copyright (c) 2015 Sivasoft. All rights reserved.
//

#import "LotteryEntry.h"

@implementation LotteryEntry

-(NSString *)description
{
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateStyle:NSDateFormatterMediumStyle];
    [df setTimeStyle:NSDateFormatterNoStyle];
    
    NSString *result;
    result = [[NSString alloc] initWithFormat: @"%@ : %d and %d",
              [df stringFromDate:entryDate], firstNumber, secondNumber];
    return result;
}

- (id)init {
    return [self initWithEntryDate: [NSDate date]];
}

- (id)initWithEntryDate:(NSDate *)theDate {
    self = [super init];
    if (self) {
        NSAssert(theDate != Nil, @"Argument must be non-nil");
        entryDate = theDate;
        firstNumber = ((int) random() % 100 + 1);
        secondNumber = ((int) random() % 100 + 1);
    }
    return self;
}

- (NSDate *) entryDate
{
    return entryDate;
}

- (int) firstNumber
{
    return firstNumber;
}

- (int) secondNumber
{
    return secondNumber;
}
@end
