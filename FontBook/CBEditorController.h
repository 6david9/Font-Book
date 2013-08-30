//
//  CBEditorController.h
//  FontBook
//
//  Created by ly on 8/30/13.
//  Copyright (c) 2013 ly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CBEditorController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) UIFont *textViewFont;

@end
