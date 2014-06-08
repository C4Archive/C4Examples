//
//  Colors05.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Colors05.h"

@implementation Colors05 {
    C4Shape *red, *green, *blue;
}

-(void)setup {
    [self setupShapes];
    
    red.fillColor  = [UIColor colorWithHue:0. saturation:1. brightness:1. alpha:1.];
    green.fillColor = [UIColor colorWithHue:0.33 saturation:1. brightness:1. alpha:1.];
    blue.fillColor = [UIColor colorWithHue:0.66 saturation:1. brightness:1. alpha:1.];
}

-(void)setupShapes {
    CGRect frame = CGRectMake(0, 0, self.canvas.width*0.9f, self.canvas.height/5.0f);
    
    NSArray *text = @[@"H:0 S:1 B:1 A:1",
                      @"H:.33 S:1 B:1 A:1",
                      @"H:.66 S:0 B:1 A:1"];
    
    C4Font *f = [C4Font fontWithName:@"DINAlternate-Bold" size:30.0f];
    for (int i = 0; i < text.count; i++) {
        C4Shape *s = [C4Shape rect:frame];
        s.lineWidth = 0;
        C4Label *l = [C4Label labelWithText:text[i] font:f];
        l.textColor = [UIColor whiteColor];
        l.center = s.center;
        [s addControl:l];
        s.center = CGPointMake(self.canvas.center.x,self.canvas.height / 4 * (i+1));
        if(i == 0) red = s;
        else if(i == 1) green = s;
        else if(i == 2) blue = s;
    }
    
    [self.canvas addObjects:@[red,green,blue]];
}
@end
