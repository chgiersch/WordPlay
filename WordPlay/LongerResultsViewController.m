//
//  LongerResultsViewController.m
//  WordPlay
//
//  Created by Chris Giersch on 1/6/15.
//  Copyright (c) 2015 ChrisGiersch. All rights reserved.
//

#import "LongerResultsViewController.h"

@interface LongerResultsViewController ()

@property (weak, nonatomic) IBOutlet UITextView *resultTextField;

@end

@implementation LongerResultsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *madLib = [NSString stringWithFormat:@"It was a dark and %@ night, when %@ finally finished the MadLib. He/she started to %@ with %@!", self.wordsArray[0], self.wordsArray[1], self.wordsArray[2], self.wordsArray[3]];
    self.resultTextField.text = madLib;
/*
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:madLib];
    NSString *boldString = self.wordsArray[0];
    NSRange boldRange = [madLib rangeOfString:self.wordsArray[0]];
    [attributedString addAttribute: NSFontAttributeName value:[UIFont boldSystemFontOfSize:12] range:boldRange];
*/
}

@end
