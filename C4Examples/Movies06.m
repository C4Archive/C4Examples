//
//  Movies06.m
//  C4Examples
//
//  Created by travis on 2014-06-06.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Movies06.h"

@implementation Movies06 {
    C4Movie *movie;
}

-(void)setup {
    //create a movie and play it automatically
    movie = [C4Movie movieNamed:@"inception.mov"];
    movie.shouldAutoplay = YES;
    movie.width = self.canvas.width;
    movie.center = self.canvas.center;
    [self.canvas addControl:movie];
}

-(void)tapped {
    movie.animationDuration = 1.0f;
    movie.animationOptions = AUTOREVERSE;
    movie.frame = self.canvas.frame;
}

@end