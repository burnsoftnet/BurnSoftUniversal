//
//  BurnSoftFormFunctions.m
//  BurnSoftUniversal
//
//  Created by burnsoft on 8/12/17.
//  Copyright © 2017 burnsoft. All rights reserved.
//

#import "BurnSoftFormFunctions.h"

@interface BurnSoftFormFunctions ()

@end

@implementation BurnSoftFormFunctions

#pragma mark Textbox View Layouts
//NOTE: Creates a border around a Textview
//USEBD: GENERAL
+(void) setBordersTextView :(UITextView *) myObj
{
    [[myObj layer] setBorderColor:[[UIColor grayColor] CGColor]];
    [[myObj layer] setBorderWidth:2.3];
    [[myObj layer] setCornerRadius:2];
}

#pragma mark Textbox Layout
//NOTE: Creates a border around a regular text box
//USEBD: GENERAL
+(void) setBorderTextBox :(UITextField *) myObj
{
    [[myObj layer] setBorderColor:[[UIColor grayColor] CGColor]];
    [[myObj layer] setBorderWidth:2.3];
    [[myObj layer] setCornerRadius:2];
}

#pragma mark Label Borders
//NOTE: Creates a border around the label
//USEBD: GENERAL
+(void) setBorderLabel :(UILabel *) myObj
{
    [[myObj layer] setBorderColor:[[UIColor grayColor] CGColor]];
    [[myObj layer] setBorderWidth:2.3];
    [[myObj layer] setCornerRadius:2];
}

#pragma mark Common Alert/Message Handling
//NOTE: Send a Message box from the View controller that you are currently on. It's easier then copying this function all over the place
//USEBD: GENERAL
-(void)sendMessage:(NSString *) msg MyTitle:(NSString *) mytitle ViewController:(UIViewController *) MyViewController
{
    //Send MessageBox Alert message to screen
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:mytitle message:msg preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * Action) {}];
    [alert addAction:defaultAction];
    [MyViewController presentViewController:alert animated:YES completion:nil];
}


@end
