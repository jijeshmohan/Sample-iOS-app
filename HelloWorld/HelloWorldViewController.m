//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Jijeshm on 27/09/12.
//  Copyright (c) 2012 Jijeshm. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)changeGreeting:(id)sender;

@end

@implementation HelloWorldViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeGreeting:(id)sender {
    self.userName =self.textField.text;
    
    NSString *nameString = self.userName;
    
    if([nameString length]==0){
        nameString=@"World";
    }
    NSString *greetings= [[NSString alloc] initWithFormat:@"Hello, %@!",nameString];
    self.label.text=greetings;
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.textField) {
        [theTextField resignFirstResponder];
    }
    return YES;
}
@end
