//
//  Colors03.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Colors03.h"

@implementation Colors03 {
    //we use a mutable array of shapes and for() loops to set styles
    NSMutableArray *shapes;
}

-(void)setup {
    [self setupShapes];
    
    //We cast each object in the array to a C4Shape object, and then set its color
    ((C4Shape *)[shapes objectAtIndex:0]).fillColor = [UIColor blackColor];
    ((C4Shape *)[shapes objectAtIndex:1]).fillColor = [UIColor darkGrayColor];
    ((C4Shape *)[shapes objectAtIndex:2]).fillColor = [UIColor lightGrayColor];
    ((C4Shape *)[shapes objectAtIndex:3]).fillColor = [UIColor grayColor];
    ((C4Shape *)[shapes objectAtIndex:4]).fillColor = [UIColor redColor];
    ((C4Shape *)[shapes objectAtIndex:5]).fillColor = [UIColor greenColor];
    ((C4Shape *)[shapes objectAtIndex:6]).fillColor = [UIColor blueColor];
    ((C4Shape *)[shapes objectAtIndex:7]).fillColor = [UIColor cyanColor];
    ((C4Shape *)[shapes objectAtIndex:8]).fillColor = [UIColor yellowColor];
    ((C4Shape *)[shapes objectAtIndex:9]).fillColor = [UIColor magentaColor];
    ((C4Shape *)[shapes objectAtIndex:10]).fillColor = [UIColor orangeColor];
    ((C4Shape *)[shapes objectAtIndex:11]).fillColor = [UIColor purpleColor];
    ((C4Shape *)[shapes objectAtIndex:12]).fillColor = [UIColor brownColor];
    ((C4Shape *)[shapes objectAtIndex:13]).fillColor = [UIColor whiteColor];
    ((C4Shape *)[shapes objectAtIndex:14]).fillColor = [UIColor clearColor];
}

-(void)setupShapes {
    //create a frame for building each shape
    CGRect frame = CGRectMake(0, 0, self.canvas.width*0.9f, self.canvas.height/20.0f);
    
    NSArray *text = @[@"black",
                      @"darkGray",
                      @"lightGray",
                      @"gray",
                      @"red",
                      @"green",
                      @"blue",
                      @"cyan",
                      @"yellow",
                      @"magenta",
                      @"orange",
                      @"purple",
                      @"brown",
                      @"white",
                      @"clear"];
    
    //initialize the array;
    shapes = [@[] mutableCopy];
    
    //create a displacement value
    CGFloat dy = self.canvas.height / (text.count + 1);
    
    C4Font *f = [C4Font fontWithName:@"DINAlternate-Bold" size:20.0f];
    //for every shape, update its linewidth, position and add it to the canvas
    for(int i = 0; i < text.count; i++) {
        C4Shape *s = [C4Shape rect:frame];
        s.lineWidth = 0.0f;
        C4Label *l = [C4Label labelWithText:text[i] font:f];
        l.textColor = [UIColor whiteColor];
        l.center = s.center;
        [s addControl:l];
        s.center = CGPointMake(self.canvas.center.x, dy * (i+1));
        
        if(i == 13) {
            //we create a shadow so that we can see the white shape
            s.shadowOffset = CGSizeMake(3, 3);
            s.shadowOpacity = 0.8f;
            l.textColor = C4GREY;
        } else if(i == 14) {
            s.shadowOffset = CGSizeMake(3, 3);
            s.shadowOpacity = 0.8f;
            s.lineWidth = 1.0f;
            s.strokeColor = C4GREY;
            l.textColor = C4GREY;
        }
        [shapes addObject:s];
    }
    
    [self.canvas addObjects:shapes];
}
@end
