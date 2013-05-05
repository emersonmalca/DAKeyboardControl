//
//  MessageSentViewController.h
//  DAKeyboardControlExample
//
//  Created by Emerson Malca on 5/4/13.
//  Copyright (c) 2013 Shout Messenger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MessageSentViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UITextField *textField;

- (IBAction)btnDismissPressed:(id)sender;

@end
