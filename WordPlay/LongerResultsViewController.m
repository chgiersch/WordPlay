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
    //NSString *madLib = [NSString stringWithFormat:@"It was a dark and %@ night, when %@ finally finished the MadLib. He/she started to %@ and %@!", self.wordsArray[1], self.wordsArray[0], self.wordsArray[2], self.wordsArray[3]];
    //self.resultTextField.text = madLib;


    self.resultTextField.attributedText = [self makeMadLib:self.wordsArray];
}

- (NSMutableAttributedString *)makeStringBold:(NSString *)string
{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:string];
    [attributedString addAttribute:@"Font" value:@"Helvetica Neue Bold" range:NSMakeRange(0, string.length)];
    return attributedString;
}

- (NSMutableAttributedString *)makeMadLib:(NSArray *)words
{
    
    NSMutableAttributedString *madLib = [[NSMutableAttributedString alloc] initWithString:@"It was a dark and "];

    [madLib appendAttributedString:words[0]];

    return madLib;
}



















/*
    for (i = 0; i < self.wordsArray.count; i++)
    {
        NSMutableAttributedString *firstAttributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.wordsArray[i]];

        NSString *boldString = self.wordsArray[0];
        NSRange boldRange = [madLib rangeOfString:self.wordsArray[0]];
        [firstAttributedString addAttribute: NSFontAttributeName
                                      value:[UIFont boldSystemFontOfSize:12] range:NSMakeRange(0, [self.wordsArray[0] ])];

        NSMutableAttributedString *story = [[NSMutableAttributedString alloc] initWithAttributedString:firstAttributedString];

        NSMutableAttributedString *story = [[NSMutableAttributedString alloc] initWithString:<#(NSString *)#>];
        NSMutableAttributedString *story = [[NSMutableAttributedString alloc] initWithString:<#(NSString *)#>];
        NSMutableAttributedString *story = [[NSMutableAttributedString alloc] initWithString:<#(NSString *)#>];
    }
    self.resultTextField.attributedText = story;

}


-(NSMutableAttributedString *)makeAttributed:(NSString *)replacedString{
    NSMutableAttributedString * attString = [[NSMutableAttributedString alloc] initWithString:replacedString];

    [attString addAttribute:NSFontAttributeName
                      value:[UIFont fontWithName:@"Helvetica-Bold" size:16.0]
                      range:NSMakeRange(0,replacedString.length)];

    return attString;

}


-(NSMutableAttributedString *)makeAttributedSimple:(NSString *)replacedString{
    NSMutableAttributedString * attString = [[NSMutableAttributedString alloc] initWithString:replacedString];

    return attString;
}



-(NSMutableAttributedString *)createStory {

    NSMutableAttributedString *story = [[NSMutableAttributedString alloc] initWithAttributedString:[self makeAttributedSimple:@"This morning "]];
    [story appendAttributedString:[self makeAttributed:self.name]];
    [story appendAttributedString:[self makeAttributedSimple:@" checked tomorrow's "]];
    [story appendAttributedString:[self makeAttributed:self.adjective]];
    [story appendAttributedString:[self makeAttributedSimple:@" coding challenge to "]];
    [story appendAttributedString:[self makeAttributed:self.verb]];
    [story appendAttributedString:[self makeAttributedSimple:@" if programming "]];
    [story appendAttributedString:[self makeAttributed:self.adverb]];
    [story appendAttributedString:[self makeAttributedSimple:@" would help."]];

    return story;
}

-(NSString* )stringReplacer:(NSRange)range {
    NSString *returnString = [@"" stringByPaddingToLength:range.length withString:@"-" startingAtIndex:0];
    return returnString;
}
 */

@end