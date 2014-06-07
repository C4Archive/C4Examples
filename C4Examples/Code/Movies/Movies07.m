//
//  Movies07.m
//  C4Examples
//
//  Created by travis on 2014-06-06.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Movies07.h"

@implementation Movies07

-(void)setup {
    C4Movie *movie = [self createMovie];

    //makes the movie play continuously
    movie.loops = YES;
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