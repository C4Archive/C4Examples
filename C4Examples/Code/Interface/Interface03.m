//
//  Interface03.m
//  C4Examples
//
//  Created by travis on 2014-06-17.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Interface03.h"

@implementation Interface03

-(void)setup {
    C4Image *img = [C4Image imageNamed:@"C4Table"];
    C4ScrollView *scrollview = [C4ScrollView scrollView:CGRectMake(0, 0, 300, 220)];
    scrollview.contentSize = img.frame.size;
    scrollview.borderColor = C4GREY;
    scrollview.borderWidth = 1.0f;
    scrollview.center = self.canvas.center;
    [scrollview addControl:img];
    [self.canvas addControl:scrollview];
}

@end
