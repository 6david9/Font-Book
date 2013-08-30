//
//  CBViewController.h
//  FontBook
//
//  Created by ly on 8/30/13.
//  Copyright (c) 2013 ly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CBViewController : UIViewController
{
    NSDictionary *_fonts;
    NSArray *_fontFamilies;
}

@property (readonly, strong, nonatomic) NSDictionary *fonts;
@property (readonly, strong, nonatomic) NSArray *fontFamilies;


// Subclass should inherir this method to do
// do something after fonts names loaded;
- (void)fontLoaded;

@end
