//
//  Shapes10.m
//  C4Examples
//
//  Created by Slant on 2014-06-04.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Shapes10.h"

@implementation Shapes10 {
    NSMutableArray *lines;
}

-(void)setup {
    [self createLines];
    [self createAdditions];
    
    C4Shape *l;
    
    l = lines[1];           //get the second line
    l.lineCap = CAPSQUARE;  //set its cap to square
    
    l = lines[2];           //get the third line
    l.lineCap = CAPROUND;   //set its cap to round
}

-(void)createLines {
    lines = [@[] mutableCopy]; //initialize an array
    
    CGPoint pts[2] = {CGPointZero, CGPointMake(self.canvas.width * .5, 0)};
    
    for (int i = -1; i < 2; i++) {
        C4Shape *line = [C4Shape line:pts];
        line.lineWidth = 30.0f;
        if(i == 0) {
            line.strokeColor = C4RED;
        } else if (i == 1) {
            line.strokeColor = C4GREY;
        }
        line.center = CGPointMake(self.canvas.center.x,
                                  self.canvas.center.y + 45 * i);
        [lines addObject:line];
    }
    [self.canvas addObjects:lines];
}

-(void)createAdditions {
    //sets the defaults for C4Shape
    C4Template* template = [C4Shape defaultTemplate];
    C4Shape *defaultShape = [template proxy];
    defaultShape.fillColor = [UIColor whiteColor];
    defaultShape.lineWidth = 0.f;
    
    C4Font *f = [C4Font fontWithName:@"DINAlternate-Bold" size:16];
    NSArray *text = @[@"CAPBUTT (default)", @"CAPSQUARE", @"CAPROUND"];
    for (int i = 0; i < lines.count; i++) {
        C4Shape *line = lines[i];
        
        C4Label *l = [C4Label labelWithText:text[i] font:f];
        l.center = line.center;
        l.textColor = [UIColor whiteColor];
        
        C4Shape* a = [C4Shape ellipse:CGRectMake(0, 0, 10, 10)];
        a.center = line.pointA;
        
        C4Shape *b = [C4Shape ellipse:CGRectMake(0, 0, 10, 10)];
        b.center = line.pointB;
        
        [self.canvas addObjects:@[l,a,b]];
    }
}

@end