//
//  BurnSoftFormFunctions.h
//  BurnSoftUniversal
//
//  Created by burnsoft on 8/12/17.
//  Copyright © 2017 burnsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BurnSoftFormFunctions : UIViewController
#pragma mark Textbox View Layouts
//NOTE: Creates a border around a Textview
//USEBD: GENERAL
+(void) setBordersTextView :(UITextView *) myObj;

#pragma mark Textbox Layout
//NOTE: Creates a border around a regular text box
//USEBD: GENERAL
+(void) setBorderTextBox :(UITextField *) myObj;

#pragma mark Label Borders
//NOTE: Creates a border around the label
//USEBD: GENERAL
+(void) setBorderLabel :(UILabel *) myObj;

#pragma mark Common Alert/Message Handling
//NOTE: Send a Message box from the View controller that you are currently on. It's easier then copying this function all over the place
//USEBD: GENERAL
-(void)sendMessage:(NSString *) msg MyTitle:(NSString *) mytitle ViewController:(UIViewController *) MyViewController;

@end
