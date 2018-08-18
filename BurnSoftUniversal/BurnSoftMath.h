//
//  BurnSoftMath.h
//  BurnSoftMath
//
//  Created by burnsoft on 1/31/17.
//  Copyright © 2017 burnsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BurnSoftMath : NSObject

#pragma mark Get Price Per Item
//Pass the price and qty to have it broken down to Price per item
//returns a double with two decimal
+(double)getPricePerItem:(NSString *) price QTY:(NSString *) qty;

#pragma mark Multiply Two Items
//Pass two values to have them multiplied
+(int) multiplyTwoItems:(NSString *) itemOne itemTwo:(NSString *) itemTwo;

#pragma markMultiply Two Items as Double Two Decimals
//Pass two values to have them multiplied
//returns a double with two decimal
+(double) multiplyTwoItems2DecDouble:(NSString *) itemOne itemTwo:(NSString *) itemTwo;

#pragma markMultiply Two Items as Double
//Pass two values to have them multiplied
//returns as full double value
+(double) multiplyTwoItemsFullDouble:(NSString *) itemOne itemTwo:(NSString *) itemTwo;

#pragma mark Add two Values as Integer
//Pass two string values to return as intenger
+(int) AddTwoItemsAsInteger:(NSString *) itemOne itemTwo:(NSString *) itemTwo;

#pragma mark Add Two Values as Double
//Pass Two string values to return as double
+(double) AddTwoItemsAsDouble:(NSString *) itemOne itemTwo:(NSString *) itemTwo;

#pragma mark Convert Double To String
//Convert a Double Value to a string with two decimals
+(NSString *)convertDoubleToString :(double) dValue;

#pragma mark Get Price per item as String
//Pass the price and qty to have it broken down to Price per item
//returns a string with two decimal
+(NSString *)getPricePerItemString :(NSString *) price QTY:(NSString *) qty;

#pragma mark Multiply Two Strings to Return String
//Pass two string values to multiply and return the value as string
+(NSString *) multiplyTwoItemsString :(NSString *) itemOne itemTwo:(NSString *) itemTwo;

#pragma mark  Multiply Two Strings to Return Double Two Decimals
//Pass two string values to multiply and return the value as stwo decimal point double
+(NSString *) multiplyTwoItems2DecDoubleString:(NSString *) itemOne itemTwo:(NSString *) itemTwo;

#pragma mark Multiply To Items to return as Full Double String Values
//Pass two string values to multiply and return the value as full double
+(NSString *) multiplyTwoItemsFullDoubleString:(NSString *) itemOne itemTwo:(NSString *) itemTwo;

#pragma mark Add Two Strings as Integers
//Pass two string values to be added as integers and return the result as a string
+(NSString *) AddTwoItemsAsIntegerString:(NSString *) itemOne itemTwo:(NSString *) itemTwo;

#pragma mark Add Two Strings as Double Two Decimal
//Pass two string values to be added as doubles and return the result as a string
+(NSString *) AddTwoItemsAsDoubleString:(NSString *) itemOne itemTwo:(NSString *) itemTwo;

#pragma mark Get the Average
//Get the Average of a set of numbers in an array
+(NSNumber *)averageOf:(NSArray *)data;

#pragma mark Get Standard Devisation
//Get the standard deviation of an array of numbers
+(NSNumber *) getStandardDeviation:(NSArray*) data;
@end
