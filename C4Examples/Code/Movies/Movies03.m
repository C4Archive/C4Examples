//
//  Movies03.m
//  C4Examples
//
//  Created by travis on 2014-06-06.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Movies03.h"

@implementation Movies03 {
    C4Movie *movie;
}

-(void)setup {
    movie = [C4Movie movieNamed:@"inception.mov"];
    movie.shouldAutoplay = YES;
    movie.loops = YES;
    movie.center = self.canvas.center;
    [self.canvas addControl:movie];
}

-(void)tapped {
    //toggles the volume of the movie (essentially muting it)
    if(movie.volume > 0) movie.volume = 0;
    else movie.volume = 1.0f;
}

@end
