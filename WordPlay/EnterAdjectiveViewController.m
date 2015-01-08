//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Chris Giersch on 1/6/15.
//  Copyright (c) 2015 ChrisGiersch. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "ResultsViewController.h"
#import "ViewController.h"

@interface EnterAdjectiveViewController ()

@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


// This method prevents a segue if the text field is empty
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([self.adjectiveTextField.text isEqualToString:@""])
    {
        return NO;
    }
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // segue identifier switch

    ResultsViewController *rvc = segue.destinationViewController;
    EnterAdjectiveViewController *avc = segue.destinationViewController;
    [self.wordsArray addObject:self.adjectiveTextField.text];
    //NSLog(@"%@", self.wordsArray[0]);
    //NSLog(@"%@", self.wordsArray[1]);
    rvc.wordsArray = self.wordsArray;
    avc.wordsArray = self.wordsArray;

}

@end
