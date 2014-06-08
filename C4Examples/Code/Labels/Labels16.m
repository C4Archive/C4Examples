//
//  Labels16.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Labels16.h"

@implementation Labels16 {
    C4Label *tail, *middle, *head;
}

-(void)setup {
    [self setupLabels];
    
    //these options are only good for single-line labels
    tail.lineBreakMode = LABELTRUNCATETAIL; // default
    middle.lineBreakMode = LABELTRUNCATEMIDDLE;
    head.lineBreakMode = LABELTRUNCATEHEAD;
}

-(void)setupLabels {
    //a string that doesn fit its frame will truncate
    C4Font *font = [C4Font fontWithName:@"DINAlternate-Bold" size:30.0f];
    
    NSString *text;
    text = @"Truncate Head Lorem ipsum dolor sit amet";
    tail = [C4Label labelWithText:text font:font];
    tail.width = 300;
    tail.center = CGPointMake(self.canvas.center.x, self.canvas.height / 4);
    
    text = @"Truncate Lorem ipsum dolor sit amet Middle";
    middle = [C4Label labelWithText:text font:font];
    middle.width = 300;
    middle.center = CGPointMake(self.canvas.center.x, self.canvas.height / 2);
    
    text = @"Lorem ipsum dolor sit amet Truncate Tail";
    head = [C4Label labelWithText:text font:font];
    head.width = 300;
    head.center = CGPointMake(self.canvas.center.x, self.canvas.height * 3 / 4);
    
    [self.canvas addObjects:@[tail, middle, head]];
}
@end
