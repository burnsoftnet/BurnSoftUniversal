//
//  BurnSoftGeneral.h
//  BurnSoftGeneral
//
//  Created by burnsoft on 1/31/17.
//  Copyright © 2017 burnsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BurnSoftGeneral : NSObject

-(NSString *) FCString:(NSString *) sValue;
-(unsigned long) FCLong:(NSString *) sValue;
-(NSString *)getValueFromLongString:(NSString *)sValue :(NSString *)mySeparater :(NSInteger) myIndex;
-(unsigned long) CountCharacters:(NSString *) sValue;
-(BOOL) isNumeric :(NSString *) sValue;
-(NSString *)formatDate:(NSDate *)date;
-(NSString *)formatLongConnectedByDateAndTIme:(NSDate *)mydate;
-(NSString *)formatLongConnectedDateTimeStamp;
-(BOOL) copyFileFromFilePath:(NSString *) fromPath ToNewPath:(NSString *) toPath ErrorMessage:(NSString **) msg;
-(BOOL)DeleteFileByPath:(NSString *) sPath ErrorMessage:(NSString **) msg;
-(NSArray *) getCertainFilefromPath:(NSString *) sPath ByExtension:(NSString *) myExt;
-(NSArray *) getCertainFilesFromDocumentsByExtension:(NSString *) myExt;
-(NSString *) returnFullPathwithFileName:(NSString *) myFile;
-(BOOL) copyFileFrom:(NSString *) sFrom To:(NSString *) sTo ErrorMessage:(NSString **) errorMessage;
@end
