//
//  Movies05.m
//  C4Examples
//
//  Created by travis on 2014-06-06.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Movies05.h"

@implementation Movies05 {
    C4Movie *movie;
}

-(void)setup {
    movie = [C4Movie movieNamed:@"inception.mov"];
    movie.shouldAutoplay = YES;
    movie.loops = YES;
    movie.width = self.canvas.width;
    movie.center = self.canvas.center;
    [self.canvas addControl:movie];
}

-(void)tapped {
    movie.animationDuration = 1.0f;
    movie.animationOptions = AUTOREVERSE;
    movie.center = self.canvas.center;
    
    //this will scale the height, keeping the same ratio for the width
    movie.height *= 2.0f;
}

@end
