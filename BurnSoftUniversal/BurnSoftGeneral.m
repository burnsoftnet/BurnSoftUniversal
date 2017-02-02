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
-(NSString *) FCString: (NSString *) sValue {
    NSString *sAns = [NSString new];
    sAns = [sValue stringByReplacingOccurrencesOfString:@"'" withString:@"''"];
    sAns = [sAns stringByReplacingOccurrencesOfString:@"`" withString:@"''"];
    sAns = [sAns stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    return sAns;
}

#pragma mark Fluff Content String to Long
//This will convert a string into a long value
-(unsigned long) FCLong:(NSString *) sValue;{
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
-(NSString *)getValueFromLongString:(NSString *)sValue :(NSString *)mySeparater :(NSInteger) myIndex
{
    NSString *sAns = [NSString new];
    NSArray *myArray = [sValue componentsSeparatedByString:mySeparater];
    sAns = [myArray objectAtIndex:myIndex];
    return sAns;
}

#pragma mark Count Characters
//This will return the number of characters in a string
-(unsigned long) CountCharacters:(NSString *)sValue{
    NSUInteger uAns = [sValue length];
    unsigned long iAns = uAns;
    return iAns;
}

#pragma mark Is Numeric
//This will return true if the value is a number, false if it isn't
-(BOOL) isNumeric :(NSString *) sValue
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
-(NSString *)formatDate:(NSDate *)date
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
    [dateFormatter setDateFormat:@"MM'/'dd'/'yyyy"];
    NSString *formattedDate = [dateFormatter stringFromDate:date];
    return formattedDate;
}
#pragma mark Format Date and Time Long By Provided DateTime
// Pass a Date and Time Stampe and have it returned in a connected format
-(NSString *)formatLongConnectedByDateAndTIme:(NSDate *)mydate
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
-(NSString *)formatLongConnectedDateTimeStamp
{
    NSString *sAns = [NSString new];
    NSDateFormatter *dateFormatter=[NSDateFormatter new];
    [dateFormatter setDateFormat:@"yyyy-MM-dd_HH_mm_ss"];

    sAns = [NSString stringWithFormat:@"%@",[dateFormatter stringFromDate:[NSDate date]]];
            
    return sAns;
}
#pragma mark CopyFile
// Simplify the copy and replace method with overwriteoption
-(BOOL) copyFileFromFilePath:(NSString *) fromPath ToNewPath:(NSString *) toPath ErrorMessage:(NSString **) msg
{
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    NSError *error;
    NSString *deleteError = [NSString new];
    BOOL success;
    BOOL bAns = NO;
    
    BOOL FileExistsAtDest = [fileManager fileExistsAtPath:toPath];
    BOOL FileExistsAtSource = [fileManager fileExistsAtPath:fromPath];
    BOOL DESTDELETESUCCESSFUL = NO;
    
    if (FileExistsAtSource && FileExistsAtDest) {
        DESTDELETESUCCESSFUL = [self DeleteFileByPath:toPath ErrorMessage:&deleteError];
    } else if (!FileExistsAtDest && FileExistsAtSource) {
        DESTDELETESUCCESSFUL = YES;
    } else if (!FileExistsAtSource && !FileExistsAtDest) {
        DESTDELETESUCCESSFUL = NO;
        *msg = [NSString stringWithFormat:@"File Does not Exist at Source or Destination!"];
    }
    
    if (DESTDELETESUCCESSFUL)
    {
        success = [fileManager copyItemAtPath:fromPath toPath:toPath error:&error];
        if (!success)
        {
            *msg = [NSString stringWithFormat:@"Error coping file: %@",[error localizedDescription]];
        } else {
            *msg = [NSString stringWithFormat:@"Copy Successful!"];
            bAns = YES;
        }
    } else {
        if ([*msg isEqualToString:@""])
        {
            *msg = deleteError;
        }
    }

    return bAns;
}
#pragma mark Delete File byPath
// Pass the path and file to delete that file
-(BOOL)DeleteFileByPath:(NSString *) sPath ErrorMessage:(NSString **) msg
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL success = NO;
    NSError *error;
    
    success = [fileManager removeItemAtPath:sPath error:&error];
    if (!success)
    {
        *msg = [NSString stringWithFormat:@"Error deleting database: %@",[error localizedDescription]];
    }else {
        *msg = [NSString stringWithFormat:@"Delete Successful!"];
    }
    return success;
}
#pragma mark Load Files in Path by Extension
//Load all the files in the target path that have a certain type of extension
-(NSArray *) getCertainFilefromPath:(NSString *) sPath ByExtension:(NSString *) myExt
{
    NSArray *filePathsArray = [NSArray new];
    NSArray *dirFiles = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:sPath error:nil];
    NSString *filefilter = [NSString stringWithFormat:@"self ENDSWITH '.%@'",myExt];
    filePathsArray = [dirFiles filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:filefilter]];
    
    return filePathsArray;
}
#pragma mark Load Files in Local Directory by Extension
// Load all the files in the Local docuemtns directory by a certain extention
-(NSArray *) getCertainFilesFromDocumentsByExtension:(NSString *) myExt
{
    NSArray *filePathsArray = [NSArray new];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSArray *dirFiles = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:documentsDirectory error:nil];
    NSString *filefilter = [NSString stringWithFormat:@"self ENDSWITH '.%@'",myExt];
    filePathsArray = [dirFiles filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:filefilter]];
    
    return filePathsArray;
}
#pragma mark Return Full Path of App Documents with file name
//Return Full Path of App Documents with file name attached
-(NSString *) returnFullPathwithFileName:(NSString *) myFile
{
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docPath = [path objectAtIndex:0];
    return [docPath stringByAppendingPathComponent:myFile];
}
@end
