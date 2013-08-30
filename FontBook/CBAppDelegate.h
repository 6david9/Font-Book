//
//  CBAppDelegate.h
//  FontBook
//
//  Created by ly on 8/30/13.
//  Copyright (c) 2013 ly. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CBFontBookController;

@interface CBAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) CBFontBookController *viewController;

@end
