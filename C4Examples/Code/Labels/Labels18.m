//
//  Labels18.m
//  C4Examples
//
//  Created by Slant on 2014-06-08.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Labels18.h"

@implementation Labels18 {
    C4Label *label;
}

-(void)setup {
    [self setupLabel];
    
    //clips the end of the label, i.e. no ... (ellipsis)
    label.lineBreakMode = LABELCLIP;
}

-(void)setupLabel {
    //a string with a lot of text and \n\n characters to delineate paragraphs
    NSString *text = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et sapien quam, fermentum pharetra quam. In fermentum massa eget nisl mollis vitae elementum est accumsan. Aenean sit amet libero elit. Nunc vel sodales risus. In et commodo eros. Nulla rhoncus pretium varius. Aliquam pellentesque porttitor erat, porta mattis arcu elementum ac. Ut turpis quam, interdum eu adipiscing nec, cursus vel urna. Mauris ac scelerisque nisl. Donec eu nunc eu sem bibendum laoreet. Nulla id nunc consectetur urna mollis porta. Donec auctor ultricies metus.\n\nNullam neque massa, placerat ut tristique at, suscipit id augue. Donec id tortor quis lorem rhoncus lacinia. Quisque at velit magna, ac gravida dolor. Nullam ut risus quis felis feugiat accumsan. Sed sed metus vitae elit mollis mattis. Sed dapibus pellentesque sodales.\n\nNam ac odio nulla. Sed sollicitudin orci vitae odio placerat ac tempor nisl tempus. Suspendisse dictum porta risus id dapibus. Praesent quam diam, iaculis sit amet condimentum ut, tincidunt vitae lectus. Cras dolor enim, luctus non laoreet non, bibendum vel lacus. In non massa lorem, at tempus nisi. Donec tortor nisl, ultrices quis varius at, suscipit nec eros. Cras consectetur egestas risus eget cursus.";
    
    label = [C4Label labelWithText:text font:[C4Font fontWithName:@"DINAlternate-Bold" size:10]];
    
    label.frame = CGRectMake(0,0,300,200);
    label.numberOfLines = 100;
    
    label.center = self.canvas.center;
    [self.canvas addControl:label];
}
@end