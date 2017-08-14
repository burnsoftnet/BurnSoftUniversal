//
//  BurnSoftGeneral.h
//  BurnSoftGeneral
//
//  Created by burnsoft on 1/31/17.
//  Copyright © 2017 burnsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BurnSoftGeneral : NSObject

#pragma mark Fluff Content String
//This will Fluff/Prep the string for inserting value into a database
//It will mostly take out things that can conflict, such as the single qoute
+(NSString *) FCString:(NSString *) sValue;

#pragma mark Fluff Content String for XML
//This will Fluff/Prep the string for inserting value into a database and XML File
//It will mostly take out things that can conflict, such as the single qoute
+(NSString *) FCStringXML: (NSString *) sValue;

#pragma mark Fluff Content String to Long
//This will convert a string into a long value
+(unsigned long) FCLong:(NSString *) sValue;

#pragma mark Get Value from Long String
//This will get the value that is store in a long string
//Pass the string, the common seperater, and the ares it should be located at
//EXAMPE:
//sValue = @"brown,cow,how,two"
//mySeperator = @","
//myIndex = 2
//Result = @"how"
+(NSString *)getValueFromLongString:(NSString *)sValue :(NSString *)mySeparater :(NSInteger) myIndex;

#pragma mark Count Characters
//This will return the number of characters in a string
+(unsigned long) CountCharacters:(NSString *) sValue;

#pragma mark Is Numeric
//This will return true if the value is a number, false if it isn't
+(BOOL) isNumeric :(NSString *) sValue;

#pragma mark Format Date
//Format date to mm/dd/yyyy
+(NSString *)formatDate:(NSDate *)date;

#pragma mark Format Date and Time Long By Provided DateTime
// Pass a Date and Time Stampe and have it returned in a connected format
+(NSString *)formatLongConnectedByDateAndTIme:(NSDate *)mydate;

#pragma mark Format Date and Time Long By Current DateTime
// Get the Current Date and Time Stampe and have it returned in a connected format
+(NSString *)formatLongConnectedDateTimeStamp;

@end
