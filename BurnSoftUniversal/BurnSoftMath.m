//
//  BurnSoftMath.m
//  BurnSoftMath
//
//  Created by burnsoft on 1/31/17.
//  Copyright © 2017 burnsoft. All rights reserved.
//

#import "BurnSoftMath.h"

@implementation BurnSoftMath

#pragma mark Get Price Per Item
//Pass the price and qty to have it broken down to Price per item
//returns a double with two decimal
+(double)getPricePerItem :(NSString *) price :(NSString *) qty
{
    return [[NSString stringWithFormat:@"%.2f",[price doubleValue]/[qty doubleValue]] doubleValue];
}

#pragma mark Multiply Two Items
//Pass two values to have them multiplied
+(int) multiplyTwoItems :(NSString *) itemOne :(NSString *) itemTwo
{
    return [itemOne intValue] * [itemTwo intValue];
}

#pragma markMultiply Two Items as Double Two Decimals
//Pass two values to have them multiplied
//returns a double with two decimal
+(double) multiplyTwoItems2DecDouble :(NSString *) itemOne :(NSString *) itemTwo
{
    return [[NSString stringWithFormat:@"%.2f",[itemOne doubleValue] * [itemTwo doubleValue]] doubleValue];
}

#pragma markMultiply Two Items as Double
//Pass two values to have them multiplied
//returns as full double value
+(double) multiplyTwoItemsFullDouble :(NSString *) itemOne :(NSString *) itemTwo
{
    return [itemOne doubleValue] * [itemTwo doubleValue];
}

#pragma mark Add two Values as Integer
//Pass two string values to return as intenger
+(int) AddTwoItemsAsInteger :(NSString *) itemOne :(NSString *) itemTwo
{
    return [itemOne intValue] + [itemTwo intValue];
}

#pragma mark Add Two Values as Double
//Pass Two string values to return as double
+(double) AddTwoItemsAsDouble :(NSString *) itemOne :(NSString *) itemTwo
{
    return [itemOne doubleValue] + [itemTwo doubleValue];
}

#pragma mark Convert Double To String
//Convert a Double Value to a string with two decimals
+(NSString *)convertDoubleToString :(double) dValue
{
    return [NSString stringWithFormat:@"%f",dValue];
}

#pragma mark Get Price per item as String
//Pass the price and qty to have it broken down to Price per item
//returns a string with two decimal
+(NSString *)getPricePerItemString :(NSString *) price :(NSString *) qty
{
    return [NSString stringWithFormat:@"%.2f",[price doubleValue]/[qty doubleValue]];
}

#pragma mark Multiply Two Strings to Return String
//Pass two string values to multiply and return the value as string
+(NSString *) multiplyTwoItemsString :(NSString *) itemOne :(NSString *) itemTwo
{
    return [NSString stringWithFormat:@"%d",[itemOne intValue] * [itemTwo intValue]];
}

#pragma mark  Multiply Two Strings to Return Double Two Decimals
//Pass two string values to multiply and return the value as stwo decimal point double
+(NSString *) multiplyTwoItems2DecDoubleString :(NSString *) itemOne :(NSString *) itemTwo
{
    return [NSString stringWithFormat:@"%.2f",[itemOne doubleValue] * [itemTwo doubleValue]];
}

#pragma mark Multiply To Items to return as Full Double String Values
//Pass two string values to multiply and return the value as full double
+(NSString *) multiplyTwoItemsFullDoubleString :(NSString *) itemOne :(NSString *) itemTwo
{
    return [NSString stringWithFormat:@"%f",[itemOne doubleValue] * [itemTwo doubleValue]];
}

#pragma mark Add Two Strings as Integers
//Pass two string values to be added as integers and return the result as a string
+(NSString *) AddTwoItemsAsIntegerString :(NSString *) itemOne :(NSString *) itemTwo
{
    return [NSString stringWithFormat:@"%d",[itemOne intValue] + [itemTwo intValue]];
}

#pragma mark Add Two Strings as Double Two Decimal
//Pass two string values to be added as doubles and return the result as a string
+(NSString *) AddTwoItemsAsDoubleString :(NSString *) itemOne :(NSString *) itemTwo
{
    return [NSString stringWithFormat:@"%f",[itemOne doubleValue] + [itemTwo doubleValue]];
}

#pragma mark Get the Average
//Get the Average of a set of numbers in an array
- (NSNumber *)averageOf:(NSArray *)data
{
    double Total = 0.0;
    
    for(NSNumber *number in data)
    {
        Total += [number doubleValue];
    }
    
    return [NSNumber numberWithDouble:(Total / [data count])];
}

#pragma mark Get Standard Devisation
//Get the standard deviation of an array of numbers
-(NSNumber *) getStandardDeviation:(NSArray*) data
{
    if(![data count]) return nil;
    NSNumber *nAns = 0;
    double mean = [[self averageOf:data] doubleValue];
    double sumOfPowDiff = 0;
    double listAvg = 0;
    
    for(NSNumber *number in data)
    {
        sumOfPowDiff += pow([number doubleValue] - mean,2);
    }
    listAvg = sumOfPowDiff / [data count];
    
    nAns = [NSNumber numberWithDouble:sqrt(listAvg)];
    return nAns;
}
@end
