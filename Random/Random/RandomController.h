//
//  RandomController.h
//  Random
//
//  Created by Palaniappan Vairavan on 12/18/14.
//  Copyright (c) 2014 Sivasoft. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Foundation/Foundation.h>

@interface RandomController : NSObject {
    IBOutlet NSTextField *textField;
}
-(IBAction)seed:(id)sender;
-(IBAction)generate:(id)sender;
@end
