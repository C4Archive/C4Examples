//
//  Movies09.m
//  C4Examples
//
//  Created by travis on 2014-06-06.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Movies09.h"

@implementation Movies09 {
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

-(void)panned:(CGPoint)location translation:(CGPoint)translation velocity:(CGPoint)velocity {
    //normalizes the point on screen from 0 to 1.0f
    CGFloat normalizedPointOnScreen = location.x / self.canvas.width;
    
    //calculate a time
    CGFloat time = normalizedPointOnScreen * movie.duration;
    
    //seek to that time
    [movie seekToTime:time];
}
@end