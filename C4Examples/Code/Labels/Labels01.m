//
//  Labels01.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Labels01.h"

@implementation Labels01

-(void)setup {
    //creates a label, with a default font and size
    C4Label *label = [C4Label labelWithText:@"Hello C4"];
    label.center = self.canvas.center;
    [self.canvas addControl:label];
}

@end
