//
//  BurnSoftGeneral.m
//  BurnSoftGeneral
//
//  Created by burnsoft on 1/31/17.
//  Copyright © 2017 burnsoft. All rights reserved.
//

#import "BurnSoftGeneral.h"

@implementation BurnSoftGeneral

#pragma mark Fluff Content String
//This will Fluff/Prep the string for inserting value into a database
//It will mostly take out things that can conflict, such as the single qoute
+(NSString *) FCString: (NSString *) sValue {
    NSString *sAns = [NSString new];
    sAns = [sValue stringByReplacingOccurrencesOfString:@"'" withString:@"''"];
    sAns = [sAns stringByReplacingOccurrencesOfString:@"`" withString:@"''"];
    sAns = [sAns stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    return sAns;
}

#pragma mark Fluff Content String for XML
//This will Fluff/Prep the string for inserting value into a database and XML File
//It will mostly take out things that can conflict, such as the single qoute
+(NSString *) FCStringXML: (NSString *) sValue {
    NSString *sAns = [NSString new];
    sAns = [sValue stringByReplacingOccurrencesOfString:@"'" withString:@"''"];
    sAns = [sAns stringByReplacingOccurrencesOfString:@"`" withString:@"''"];
    sAns = [sAns stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"];
    sAns = [sAns stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    return sAns;
}

#pragma mark Fluff Content String to Long
//This will convert a string into a long value
+(unsigned long) FCLong:(NSString *) sValue;{
    NSUInteger uAns = [sValue length];
    unsigned long iAns = uAns;
    return iAns;
}

#pragma mark Get Value from Long String
//This will get the value that is store in a long string
//Pass the string, the common seperater, and the ares it should be located at
//EXAMPE:
//sValue = @"brown,cow,how,two"
//mySeperator = @","
//myIndex = 2
//Result = @"how"
+(NSString *)getValueFromLongString:(NSString *)sValue Separater:(NSString *)mySeparater AtIndex:(NSInteger) myIndex
{
    NSString *sAns = [NSString new];
    NSArray *myArray = [sValue componentsSeparatedByString:mySeparater];
    sAns = [myArray objectAtIndex:myIndex];
    return sAns;
}

#pragma mark Count Characters
//This will return the number of characters in a string
+(unsigned long) CountCharacters:(NSString *)sValue{
    NSUInteger uAns = [sValue length];
    unsigned long iAns = uAns;
    return iAns;
}

#pragma mark Is Numeric
//This will return true if the value is a number, false if it isn't
+(BOOL) isNumeric :(NSString *) sValue
{
    static BOOL bAns = NO;
    NSScanner *scanner = [NSScanner scannerWithString:sValue];
    if ([sValue length] != 0)
    {
        if ([scanner scanInteger:NULL] && [scanner isAtEnd])
        {
            bAns = YES;
        }
    } else {
        bAns = YES;
    }
    return bAns;
}

#pragma mark Format Date
//Format date to mm/dd/yyyy
+(NSString *)formatDate:(NSDate *)date
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
    [dateFormatter setDateFormat:@"MM'/'dd'/'yyyy"];
    NSString *formattedDate = [dateFormatter stringFromDate:date];
    return formattedDate;
}
#pragma mark Format Date and Time Long By Provided DateTime
// Pass a Date and Time Stampe and have it returned in a connected format
+(NSString *)formatLongConnectedByDateAndTIme:(NSDate *)mydate
{
    NSString *sAns = [NSString new];
    NSDateFormatter *dateFormatter=[NSDateFormatter new];
    [dateFormatter setDateFormat:@"yyyy-MM-dd_HH_mm_ss"];
    //[dateFormatter stringFromDate:[NSDate date]
    sAns = [NSString stringWithFormat:@"%@",[dateFormatter stringFromDate:mydate]];
    return sAns;
}
#pragma mark Format Date and Time Long By Current DateTime
// Get the Current Date and Time Stampe and have it returned in a connected format
+(NSString *)formatLongConnectedDateTimeStamp
{
    NSString *sAns = [NSString new];
    NSDateFormatter *dateFormatter=[NSDateFormatter new];
    [dateFormatter setDateFormat:@"yyyy-MM-dd_HH_mm_ss"];

    sAns = [NSString stringWithFormat:@"%@",[dateFormatter stringFromDate:[NSDate date]]];
            
    return sAns;
}
#pragma mark Convert Strin to NSNumber
//Convert a string to NSNumber
+(NSNumber *) convertToNSNumberByString:(NSString *) sValue
{
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    f.numberStyle = NSNumberFormatterDecimalStyle;
    NSNumber *nNumber = [f numberFromString:sValue];
    return nNumber;
}
@end
