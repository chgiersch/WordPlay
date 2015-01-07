//
//  EnterSecondVerbViewController.m
//  WordPlay
//
//  Created by Chris Giersch on 1/6/15.
//  Copyright (c) 2015 ChrisGiersch. All rights reserved.
//

#import "EnterSecondVerbViewController.h"
#import "LongerResultsViewController.h"

@interface EnterSecondVerbViewController ()

@property (weak, nonatomic) IBOutlet UITextField *secondVerbTextField;

@end

@implementation EnterSecondVerbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    LongerResultsViewController *lrvc = segue.destinationViewController;
    [self.wordsArray addObject:self.secondVerbTextField.text];
    lrvc.wordsArray = self.wordsArray;
}


@end
