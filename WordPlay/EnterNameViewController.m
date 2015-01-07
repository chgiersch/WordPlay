//
//  EnterNameViewController.m
//  WordPlay
//
//  Created by Chris Giersch on 1/6/15.
//  Copyright (c) 2015 ChrisGiersch. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"
#import "ViewController.h"


@interface EnterNameViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property NSMutableArray *wordsArray;

@end

@implementation EnterNameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.wordsArray = [NSMutableArray new];
    // Do any additional setup after loading the view.
}

// This method prevents a segue if the text field is empty
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([self.nameTextField.text isEqualToString:@""])
    {
        return NO;
    }
    return YES;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EnterAdjectiveViewController *avc = segue.destinationViewController;
    [self.wordsArray addObject:self.nameTextField.text];
    NSLog(@"%@", [self.wordsArray objectAtIndex:0]);
    avc.wordsArray = self.wordsArray;
}

@end
