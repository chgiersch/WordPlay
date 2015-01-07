//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Tewodros Wondimu on 1/6/15.
//  Copyright (c) 2015 ChrisGiersch. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()

@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *madLib = [NSString stringWithFormat:@"It was a dark and %@ night, when %@ finally finished his MadLib.", self.wordsArray[0], self.wordsArray[1]];
    self.resultsTextView.text = madLib;
}



@end
