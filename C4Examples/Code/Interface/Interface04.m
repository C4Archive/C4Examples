//
//  Interface04.m
//  C4Examples
//
//  Created by travis on 2014-06-17.
//  Copyright (c) 2014 C4. All rights reserved.
//

#import "Interface04.h"

@implementation Interface04

-(void)setup {
    NSString *lipsum = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nunc arcu, dapibus sit amet ultrices a, sodales nec leo. Phasellus at erat et lorem malesuada mattis eget quis tortor. Morbi ut nibh a diam hendrerit faucibus at ut elit. Nulla vehicula mattis consectetur. Integer rutrum dui ac elit mollis sagittis. Suspendisse potenti. Nulla est lorem, auctor nec ornare sed, vestibulum et nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis rhoncus accumsan porta. Nullam dictum facilisis molestie.\n\nDuis vel nisi ac dui consectetur tincidunt. Nulla suscipit diam condimentum felis condimentum vulputate. Nulla facilisi. Sed lobortis suscipit ligula, ut consectetur felis dictum semper. Cras vel lacinia est. Sed non sem massa. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam quis elit eget lectus accumsan posuere. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent nec elit at erat posuere vestibulum. Maecenas vitae leo sit amet purus posuere elementum. Donec et dui a elit molestie pulvinar ut mollis nulla. Ut lacinia elit et est ornare ultrices. Nullam dui odio, rutrum eu consequat id, interdum vel augue. Cras at elit diam. Phasellus accumsan semper semper. Donec ac hendrerit velit. Suspendisse potenti. Nullam ac sodales lorem. Etiam molestie est vel risus sollicitudin dictum.\n\nEtiam a ante ac leo pretium congue. Vivamus vehicula sollicitudin ligula in condimentum. Nunc sed enim sapien. Pellentesque vitae metus sapien. Maecenas massa metus, interdum sed elementum nec, cursus non arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed pellentesque purus ut lacus scelerisque sagittis. Donec bibendum, libero ut porta imperdiet, mi justo ornare velit, id tincidunt nibh tellus ac est. Ut facilisis porta odio, non molestie justo interdum in. Vestibulum in adipiscing quam. Etiam vel eleifend orci. Aenean eleifend dui id lorem egestas auctor. Sed in eros dui. In eu sapien nec mi aliquam malesuada. Proin sit amet dolor orci, quis lacinia justo. Fusce pulvinar faucibus mi, a placerat metus sollicitudin id.\n\nDonec egestas consectetur bibendum. Praesent ut arcu risus. Mauris id lorem ac enim semper ornare. Morbi interdum, enim ut lacinia ornare, justo leo cursus mi, a scelerisque ipsum metus eu nisl. Vestibulum a velit sem, ac tristique lectus. Phasellus turpis leo, laoreet non mollis ac, ultricies vel nisl. Ut ac turpis odio, vel consequat tortor. Morbi condimentum placerat metus, vel sagittis ante tincidunt a. Aenean ac malesuada leo. Aenean non est quis dolor varius tempus vitae nec urna. Aliquam molestie, arcu malesuada pulvinar tincidunt, velit nulla consequat tortor, sit amet dictum felis diam id ligula. Vestibulum eget libero quam. Pellentesque metus neque, rhoncus id suscipit tristique, eleifend a quam.";
    
    CGRect frame = CGRectMake(0, 0, self.canvas.width - 20, self.canvas.height - 20);
    if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) frame = CGRectMake(0, 0, 400, 600);
    
    C4Label *label = [C4Label labelWithText:lipsum font:[C4Font fontWithName:@"DINAlternate-Bold" size:20.0f]];
    label.numberOfLines = 100.0f;
    label.frame = frame;
    [label sizeToFit];
    
    C4ScrollView *scrollView = [C4ScrollView scrollView:frame];
    [scrollView addControl:label];
    scrollView.contentSize = label.size;
    scrollView.center = self.canvas.center;
    scrollView.borderWidth = 1.0f;
    [self.canvas addControl:scrollView];
}

@end
