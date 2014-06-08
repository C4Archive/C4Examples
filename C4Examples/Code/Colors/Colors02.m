//
//  Colors02.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Colors02.h"

@implementation Colors02 {
    C4Shape *red, *blue, *grey;
}

-(void)setup {
    [self setupShapes];
    
    red.fillColor  = C4RED;
    blue.fillColor = C4BLUE;
    grey.fillColor = C4GREY;
}

-(void)setupShapes {
    CGRect frame = CGRectMake(0, 0, self.canvas.width*0.9f, self.canvas.height/5.0f);

    NSArray *text = @[@"C4RED",@"C4BLUE",@"C4GREY"];

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
        else if(i == 1) blue = s;
        else if(i == 2) grey = s;
    }
    
    [self.canvas addObjects:@[red,blue,grey]];
}
@end
