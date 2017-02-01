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

@end
