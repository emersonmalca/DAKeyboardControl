//
//  MessageSentViewController.m
//  DAKeyboardControlExample
//
//  Created by Emerson Malca on 5/4/13.
//  Copyright (c) 2013 Shout Messenger. All rights reserved.
//

#import "MessageSentViewController.h"
#import "DAKeyboardControl.h"

@interface MessageSentViewController ()

@end

@implementation MessageSentViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.scrollView.contentSize = self.view.frame.size;
    
    __weak MessageSentViewController *weakSelf = self;
    
    [self.view addKeyboardPanningWithActionHandler:^(CGRect keyboardFrameInView) {
        /*
         Try not to call "self" inside this block (retain cycle).
         But if you do, make sure to remove DAKeyboardControl
         when you are done with the view controller by calling:
         [self.view removeKeyboardControl];
         */
        
        MessageSentViewController *strongSelf = weakSelf;
        if (strongSelf) {
            CGRect scrollViewFrame = strongSelf->_scrollView.frame;
            scrollViewFrame.size.height = keyboardFrameInView.origin.y;
            strongSelf->_scrollView.frame = scrollViewFrame;
        }
    }];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [_textField becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [self.view removeKeyboardControl];
}

- (IBAction)btnDismissPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
