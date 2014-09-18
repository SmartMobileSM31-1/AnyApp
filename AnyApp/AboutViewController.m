//
//  AboutViewController.m
//  AnyApp
//
//  Created by Fhict on 11/09/14.
//  Copyright (c) 2014 Fhict. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

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
    self.tfInput.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)ShowTextField:(id)sender {
    NSString* selectedText = self.tfInput.text;
    
    UIAlertView *alertView =
    [[UIAlertView alloc] initWithTitle:@"Your text is:" message:selectedText delegate:nil cancelButtonTitle:@"Done" otherButtonTitles:nil];
    [alertView show];
}
- (IBAction)TextFieldAccept:(id)sender {
}

-(BOOL)textFieldShouldReturn:(UITextField *)tfInput
{
    [tfInput resignFirstResponder];
    return YES;
}

@end
