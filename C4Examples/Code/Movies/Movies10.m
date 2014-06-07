//
//  Movies10.m
//  C4Examples
//
//  Created by travis on 2014-06-06.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Movies10.h"

@implementation Movies10 {
    C4Movie *movie;
}

-(void)setup {
    //create a movie and add it to the canvas
    movie = [C4Movie movieNamed:@"inception.mov"];
    movie.shouldAutoplay = YES;
    movie.loops = YES;
    movie.width = self.canvas.width;
    movie.center = self.canvas.center;
    [self.canvas addControl:movie];
}

-(void)tapped:(CGPoint)location {
    //normalizes the point on screen from 0 to 1.0f
    CGFloat pointOnScreen = location.x;
    
    //if your touch is on the left side of the screen, go back 1 second
    //otherwise go forward
    
    if(pointOnScreen <= self.canvas.center.x) [movie seekByAddingTime:-1.0f];
    else [movie seekByAddingTime:1.0f];
}

@end