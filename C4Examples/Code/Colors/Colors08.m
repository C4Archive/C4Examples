//
//  Colors08.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Colors08.h"

@implementation Colors08 {
    C4Shape *red, *blue, *grey;
    CGFloat r[4], b[4], g[4];
}

-(void)setup {
    //grab the color values, and use them in setLabels
    [C4RED getRed:&r[0] green:&r[1] blue:&r[2] alpha:&r[3]];
    [C4BLUE getRed:&b[0] green:&b[1] blue:&b[2] alpha:&b[3]];
    [C4GREY getRed:&g[0] green:&g[1] blue:&g[2] alpha:&g[3]];
    
    [self setupShapes];
    [self setupLabels];
}

-(void)setupShapes {
    NSArray *text = @[@"C4RED",@"C4BLUE",@"C4GREY"];
    
    for (int i = 0; i < text.count; i++) {
        CGRect frame = CGRectMake(0, 0, self.canvas.width*0.9f, self.canvas.height/5.0f);
        C4Shape *s = [C4Shape rect:frame];
        s.lineWidth = 0.0f;
        s.center = CGPointMake(self.canvas.center.x, self.canvas.height/4 * (i+1));
        
        if(i == 0) {
            red = s;
            red.fillColor = C4RED;
        }
        else if (i == 1) {
            blue = s;
            blue.fillColor = C4BLUE;
        } else if (i == 2) {
            grey = s;
            grey.fillColor = C4GREY;
        }
    }
    
    [self.canvas addObjects:@[red,blue,grey]];
}

-(void)setupLabels {
    C4Font *f = [C4Font fontWithName:@"DINAlternate-Bold" size:30.0f];
    
    NSString *colorString;
    C4Label *l;
    
    colorString = [NSString stringWithFormat:@"{%4.2f,%4.2f,%4.2f,%4.2f}",r[0],r[1],r[2],r[3]];
    l = [C4Label labelWithText:colorString font:f];
    l.textColor = [UIColor whiteColor];
    l.center = CGPointMake(red.width / 2, red.height / 2);
    [red addControl:l];
    
    colorString = [NSString stringWithFormat:@"{%4.2f,%4.2f,%4.2f,%4.2f}",b[0],b[1],b[2],b[3]];
    l = [C4Label labelWithText:colorString font:f];
    l.textColor = [UIColor whiteColor];
    l.center = CGPointMake(red.width / 2, red.height / 2);
    [blue addControl:l];
    
    colorString = [NSString stringWithFormat:@"{%4.2f,%4.2f,%4.2f,%4.2f}",g[0],g[1],g[2],g[3]];
    l = [C4Label labelWithText:colorString font:f];
    l.textColor = [UIColor whiteColor];
    l.center = CGPointMake(red.width / 2, red.height / 2);
    [grey addControl:l];
}

@end
