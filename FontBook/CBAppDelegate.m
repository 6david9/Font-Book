//
//  CBAppDelegate.m
//  FontBook
//
//  Created by ly on 8/30/13.
//  Copyright (c) 2013 ly. All rights reserved.
//

#import "CBAppDelegate.h"

#import "CBFontBookController.h"

@implementation CBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.viewController = [[CBFontBookController alloc] initWithNibName:
       @"CBFontBookController" bundle:nil];
    self.window.rootViewController = [[UINavigationController alloc]
       initWithRootViewController:self.viewController];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
