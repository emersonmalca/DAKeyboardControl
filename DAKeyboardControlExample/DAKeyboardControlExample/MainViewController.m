//
//  MainViewController.m
//  DAKeyboardControlExample
//
//  Created by Emerson Malca on 5/4/13.
//  Copyright (c) 2013 Shout Messenger. All rights reserved.
//

#import "MainViewController.h"
#import "ViewController.h"
#import "MessageSentViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showWithTextFieldButtonPressed:(id)sender {
    ViewController *vc = [[ViewController alloc] init];
    [self presentViewController:vc animated:YES completion:NULL];
}

- (IBAction)showWithTextViewButtonPressed:(id)sender {
    MessageSentViewController *vc = [[MessageSentViewController alloc] initWithNibName:@"MessageSentViewController" bundle:nil];
    [self presentViewController:vc animated:YES completion:NULL];
}

@end
