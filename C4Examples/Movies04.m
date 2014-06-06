//
//  Movies04.m
//  C4Examples
//
//  Created by travis on 2014-06-06.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Movies04.h"

@implementation Movies04 {
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
    
    //this will scale the width, keeping the same ratio for the height
    movie.width /= 2.0f;
}

@end
