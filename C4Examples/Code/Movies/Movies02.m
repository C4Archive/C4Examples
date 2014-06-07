//
//  Movies02.m
//  C4Examples
//
//  Created by travis on 2014-06-06.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Movies02.h"

@implementation Movies02

-(void)setup {
    C4Movie *movie = [self createMovie];
    movie.shouldAutoplay = YES; //make the movie play the instant it's loaded
}

-(C4Movie *)createMovie {
    C4Movie *movie = [C4Movie movieNamed:@"inception.mov"];
    movie.shouldAutoplay = YES;
    movie.loops = YES;
    movie.center = self.canvas.center;
    [self.canvas addControl:movie];
    return movie;
}
@end
