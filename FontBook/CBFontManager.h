//
//  CBFontManager.h
//  FontBook
//
//  Created by ly on 8/30/13.
//  Copyright (c) 2013 ly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CBFontManager : NSObject

+ (void)getFontsWithCompletionBlock:(void (^)(NSDictionary *fonts))block;

@end
