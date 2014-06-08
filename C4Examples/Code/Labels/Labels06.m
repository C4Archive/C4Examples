//
//  Labels06.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Labels06.h"

@implementation Labels06{
    C4Label *label;
}

-(void)setup {
    label = [C4Label labelWithText:@"Hello C4"];
    
    label.center = self.canvas.center;
    [self.canvas addControl:label];
}

-(void)tapped {
    //create a custom font
    C4Font *customFont = [C4Font fontWithName:@"DINAlternate-Bold" size:50.0f];
    
    //set the label's font
    label.font = customFont;
    
    [label sizeToFit];
    label.center = self.canvas.center;
}
@end
