//
//  EnterVerbViewController.m
//  WordPlay
//
//  Created by Chris Giersch on 1/6/15.
//  Copyright (c) 2015 ChrisGiersch. All rights reserved.
//

#import "EnterVerbViewController.h"
#import "EnterSecondVerbViewController.h"

@interface EnterVerbViewController ()

@property (weak, nonatomic) IBOutlet UITextField *verbTextField;

@end

@implementation EnterVerbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EnterSecondVerbViewController *svvc = segue.destinationViewController;
    [self.wordsArray addObject:self.verbTextField.text];
    svvc.wordsArray = self.wordsArray;
}

@end
