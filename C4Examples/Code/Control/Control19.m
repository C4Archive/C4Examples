//
//  Control19.m
//  C4Examples
//
//  Created by travis on 2014-06-12.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Control19.h"

@implementation Control19

-(void)setup {
    C4Image *still = [C4Image imageNamed:@"C4Sky"];
    [self.canvas addControl:still];
    //NOTE: You need to have the following images in your project
    // You can replace these names with any image sequence
    C4Image *animated = [C4Image animatedImageWithNames:@[@"C4Spin00",
                                                          @"C4Spin01",
                                                          @"C4Spin02",
                                                          @"C4Spin03",
                                                          @"C4Spin04",
                                                          @"C4Spin05",
                                                          @"C4Spin06",
                                                          @"C4Spin07",
                                                          @"C4Spin08",
                                                          @"C4Spin09",
                                                          @"C4Spin10",
                                                          @"C4Spin11"
                                                          ]];
    animated.center = still.center;
    animated.animatedImageDuration = 1.0f;
    still.center = self.canvas.center;
    still.mask = animated;
    [animated play];
}

@end
