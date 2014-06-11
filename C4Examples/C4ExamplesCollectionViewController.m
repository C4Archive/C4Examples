// Copyright © 2014 Travis Kirton, Alejandro Isaza
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to
// deal in the Software without restriction, including without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
// sell copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions: The above copyright
// notice and this permission notice shall be included in all copies or
// substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
// IN THE SOFTWARE.

#import "C4Example.h"
#import "C4ExampleCell.h"
#import "C4ExamplesCollectionViewController.h"
#import "C4Section.h"
#import "C4SectionHeaderView.h"

@interface C4ExamplesCollectionViewController ()

@end

@implementation C4ExamplesCollectionViewController

- (id)initWithCoder:(NSCoder *)decoder {
    self = [super initWithCoder:decoder];
    [self loadExamples];
    return self;
}

- (void)loadExamples {
    self.sections = @[
        [C4Section sectionWithTitle:@"Images" examples:@[
            [C4Example exampleWithWorkSpaceClassName:@"Images01" title:@"01"],
            [C4Example exampleWithWorkSpaceClassName:@"Images02" title:@"02"],
            [C4Example exampleWithWorkSpaceClassName:@"Images03" title:@"03"],
            [C4Example exampleWithWorkSpaceClassName:@"Images04" title:@"04"],
            [C4Example exampleWithWorkSpaceClassName:@"Images05" title:@"05"],
            [C4Example exampleWithWorkSpaceClassName:@"Images06" title:@"06"],
            [C4Example exampleWithWorkSpaceClassName:@"Images07" title:@"07"],
            [C4Example exampleWithWorkSpaceClassName:@"Images08" title:@"08"],
        ]],
        [C4Section sectionWithTitle:@"Shapes" examples:@[
            [C4Example exampleWithWorkSpaceClassName:@"Shapes01" title:@"01"],
            [C4Example exampleWithWorkSpaceClassName:@"Shapes02" title:@"02"],
            [C4Example exampleWithWorkSpaceClassName:@"Shapes03" title:@"03"],
            [C4Example exampleWithWorkSpaceClassName:@"Shapes04" title:@"04"],
            [C4Example exampleWithWorkSpaceClassName:@"Shapes05" title:@"05"],
            [C4Example exampleWithWorkSpaceClassName:@"Shapes06" title:@"06"],
            [C4Example exampleWithWorkSpaceClassName:@"Shapes07" title:@"07"],
            [C4Example exampleWithWorkSpaceClassName:@"Shapes08" title:@"08"],
            [C4Example exampleWithWorkSpaceClassName:@"Shapes09" title:@"09"],
            [C4Example exampleWithWorkSpaceClassName:@"Shapes10" title:@"10"],
            [C4Example exampleWithWorkSpaceClassName:@"Shapes11" title:@"11"],
            [C4Example exampleWithWorkSpaceClassName:@"Shapes12" title:@"12"],
            [C4Example exampleWithWorkSpaceClassName:@"Shapes13" title:@"13"],
            [C4Example exampleWithWorkSpaceClassName:@"Shapes14" title:@"14"],
            [C4Example exampleWithWorkSpaceClassName:@"Shapes15" title:@"15"],
            [C4Example exampleWithWorkSpaceClassName:@"Shapes16" title:@"16"],
            [C4Example exampleWithWorkSpaceClassName:@"Shapes17" title:@"17"],
            [C4Example exampleWithWorkSpaceClassName:@"Shapes18" title:@"18"],
            [C4Example exampleWithWorkSpaceClassName:@"Shapes19" title:@"19"],
            [C4Example exampleWithWorkSpaceClassName:@"Shapes20" title:@"20"],
        ]],
        [C4Section sectionWithTitle:@"Timers" examples:@[
            [C4Example exampleWithWorkSpaceClassName:@"Timers01" title:@"01"],
            [C4Example exampleWithWorkSpaceClassName:@"Timers02" title:@"02"],
            [C4Example exampleWithWorkSpaceClassName:@"Timers03" title:@"03"],
        ]],
        [C4Section sectionWithTitle:@"Fonts" examples:@[
            [C4Example exampleWithWorkSpaceClassName:@"Fonts01" title:@"01"],
            [C4Example exampleWithWorkSpaceClassName:@"Fonts02" title:@"02"],
            [C4Example exampleWithWorkSpaceClassName:@"Fonts03" title:@"03"],
            [C4Example exampleWithWorkSpaceClassName:@"Fonts04" title:@"04"],
            [C4Example exampleWithWorkSpaceClassName:@"Fonts05" title:@"05"],
            [C4Example exampleWithWorkSpaceClassName:@"Fonts06" title:@"06"],
            [C4Example exampleWithWorkSpaceClassName:@"Fonts07" title:@"07"],
        ]],
        [C4Section sectionWithTitle:@"Colors" examples:@[
            [C4Example exampleWithWorkSpaceClassName:@"Colors01" title:@"01"],
            [C4Example exampleWithWorkSpaceClassName:@"Colors02" title:@"02"],
            [C4Example exampleWithWorkSpaceClassName:@"Colors03" title:@"03"],
            [C4Example exampleWithWorkSpaceClassName:@"Colors04" title:@"04"],
            [C4Example exampleWithWorkSpaceClassName:@"Colors05" title:@"05"],
            [C4Example exampleWithWorkSpaceClassName:@"Colors06" title:@"06"],
            [C4Example exampleWithWorkSpaceClassName:@"Colors07" title:@"07"],
            [C4Example exampleWithWorkSpaceClassName:@"Colors08" title:@"08"],
        ]],
        [C4Section sectionWithTitle:@"Labels" examples:@[
            [C4Example exampleWithWorkSpaceClassName:@"Labels01" title:@"01"],
            [C4Example exampleWithWorkSpaceClassName:@"Labels02" title:@"02"],
            [C4Example exampleWithWorkSpaceClassName:@"Labels03" title:@"03"],
            [C4Example exampleWithWorkSpaceClassName:@"Labels04" title:@"04"],
            [C4Example exampleWithWorkSpaceClassName:@"Labels05" title:@"05"],
            [C4Example exampleWithWorkSpaceClassName:@"Labels06" title:@"06"],
            [C4Example exampleWithWorkSpaceClassName:@"Labels07" title:@"07"],
            [C4Example exampleWithWorkSpaceClassName:@"Labels08" title:@"08"],
            [C4Example exampleWithWorkSpaceClassName:@"Labels09" title:@"09"],
            [C4Example exampleWithWorkSpaceClassName:@"Labels10" title:@"10"],
            [C4Example exampleWithWorkSpaceClassName:@"Labels11" title:@"11"],
            [C4Example exampleWithWorkSpaceClassName:@"Labels12" title:@"12"],
            [C4Example exampleWithWorkSpaceClassName:@"Labels13" title:@"13"],
            [C4Example exampleWithWorkSpaceClassName:@"Labels14" title:@"14"],
            [C4Example exampleWithWorkSpaceClassName:@"Labels15" title:@"15"],
            [C4Example exampleWithWorkSpaceClassName:@"Labels16" title:@"16"],
            [C4Example exampleWithWorkSpaceClassName:@"Labels17" title:@"17"],
            [C4Example exampleWithWorkSpaceClassName:@"Labels18" title:@"18"],
            [C4Example exampleWithWorkSpaceClassName:@"Labels19" title:@"19"],
            [C4Example exampleWithWorkSpaceClassName:@"Labels20" title:@"20"],
            [C4Example exampleWithWorkSpaceClassName:@"Labels21" title:@"21"],
        ]],
        [C4Section sectionWithTitle:@"Movies" examples:@[
            [C4Example exampleWithWorkSpaceClassName:@"Movies01" title:@"01"],
            [C4Example exampleWithWorkSpaceClassName:@"Movies02" title:@"02"],
            [C4Example exampleWithWorkSpaceClassName:@"Movies03" title:@"03"],
            [C4Example exampleWithWorkSpaceClassName:@"Movies04" title:@"04"],
            [C4Example exampleWithWorkSpaceClassName:@"Movies05" title:@"05"],
            [C4Example exampleWithWorkSpaceClassName:@"Movies06" title:@"06"],
            [C4Example exampleWithWorkSpaceClassName:@"Movies07" title:@"07"],
            [C4Example exampleWithWorkSpaceClassName:@"Movies08" title:@"08"],
            [C4Example exampleWithWorkSpaceClassName:@"Movies09" title:@"09"],
            [C4Example exampleWithWorkSpaceClassName:@"Movies10" title:@"10"],
        ]],
    ];
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.sections.count;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)sectionIndex {
    C4Section* section = self.sections[sectionIndex];
    return section.examples.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    C4Section* section = self.sections[indexPath.section];
    C4Example* example = section.examples[indexPath.item];
    
    C4ExampleCell* cell = (C4ExampleCell*)[collectionView dequeueReusableCellWithReuseIdentifier:@"ExampleCell" forIndexPath:indexPath];
    cell.titleLabel.text = example.title;
    cell.workSpace = [[NSClassFromString(example.workSpaceClassName) alloc] init];

    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    C4Section* section = self.sections[indexPath.section];
    C4SectionHeaderView* view = (C4SectionHeaderView*)[collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"Header" forIndexPath:indexPath];
    view.titleLabel.text = section.title;
    return view;
}

@end
