//
//  Movies08.m
//  C4Examples
//
//  Created by travis on 2014-06-06.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Movies08.h"

@implementation Movies08 {
    C4Movie *movie;
}

-(void)setup {
    movie = [C4Movie movieNamed:@"inception.mov"];
    movie.shouldAutoplay = YES;
    movie.loops = YES;
    movie.center = self.canvas.center;
    [self.canvas addControl:movie];
}

-(void)tapped:(CGPoint)location {
    //switches the direction of the movie's playback
    CGFloat point = location.x;
    
    //this makes sure that the value of point is between -canvas.width/2
    point -= self.canvas.width/2;
    
    //this normalizes the point from -1 to 1
    point /= self.canvas.width/2;
    
    //touching the leftmost part of the screen: point = -1.0f
    //touching the rightmost part of the screen: point = +1.0f
    
    //set the movie's rate to the normalized point value
    movie.rate = point;
}
@end
