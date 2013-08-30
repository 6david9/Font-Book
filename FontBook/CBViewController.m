//
//  CBViewController.m
//  FontBook
//
//  Created by ly on 8/30/13.
//  Copyright (c) 2013 ly. All rights reserved.
//

#import "CBViewController.h"
#import "CBFontManager.h"

@interface CBViewController ()

@end

@implementation CBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    __weak typeof(self) target = self;
    [CBFontManager getFontsWithCompletionBlock:^(NSDictionary *fonts) {
        [target setFonts:fonts];
        
        NSArray *fontFamilies = [target sortedArray:[fonts allKeys]];
        [target setFontFamilies:fontFamilies];
        
        // Notity to do something
        [target fontLoaded];
    }];
}

#pragma mark - Accessor
- (NSDictionary *)fonts
{
    return _fonts;
}

- (void)setFonts:(NSDictionary *)fonts
{
    _fonts = fonts;
}

- (NSArray *)fontFamilies
{
    return _fontFamilies;
}

- (void)setFontFamilies:(NSArray *)fontFamilies
{
    _fontFamilies = fontFamilies;
}

#pragma mark - 
- (void)fontLoaded
{
    // Do nothing
}

- (NSArray *)sortedArray:(NSArray *)source
{
    return [source sortedArrayUsingComparator:^NSComparisonResult(NSString *str1, NSString *str2) {
                return [str1 compare:str2];
            }];
}

@end
