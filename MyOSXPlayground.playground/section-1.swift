// Playground - noun: a place where people can play

import Cocoa
import appkit

var str = "Hello, playground"

var myString = "Happy Days"

var sineWave = 0.0

var x = 0.0

while (x < 6.28) {
    sineWave = sin(x);
    x = x + 0.1;
}

let frame = CGRect(x:0, y:0, width: 200, height: 50)

let fr1 = [[NSButton alloc] initWithFrame: NSMakeRect(200, 200, 20, 20)];

