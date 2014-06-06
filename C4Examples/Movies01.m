//
//  Movies01.m
//  C4Examples
//
//  Created by travis on 2014-06-06.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Movies01.h"

@implementation Movies01 {
    C4Movie *movie;
}

-(void)setup {
    //create a movie and play it automatically
    movie = [C4Movie movieNamed:@"inception.mov"];
    movie.center = self.canvas.center;
    [self.canvas addControl:movie];
}

-(void)tapped {
    [movie play];
}

@end
