//
//  CBFontManager.m
//  FontBook
//
//  Created by ly on 8/30/13.
//  Copyright (c) 2013 ly. All rights reserved.
//

#import "CBFontManager.h"

@implementation CBFontManager

+ (void)getFontsWithCompletionBlock:(void (^)(NSDictionary *fonts))block
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        @autoreleasepool {
            
            NSArray *familyNames = [UIFont familyNames];
            NSMutableDictionary *dict = [[NSMutableDictionary alloc]
                                         initWithCapacity:[familyNames count]];
            
            
            for (NSString *fontFamily in familyNames) {
                NSArray *fontNames = [UIFont fontNamesForFamilyName:fontFamily];
                [dict setValue:fontNames forKey:fontFamily];
            }
            
            dispatch_async(dispatch_get_main_queue(), ^{
                block(dict);
            });
        }
    });
}

@end
