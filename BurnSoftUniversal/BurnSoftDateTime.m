//
//  BurnSoftDateTime.m
//  BurnSoftUniversal
//
//  Created by burnsoft on 11/1/18.
//  Copyright © 2018 burnsoft. All rights reserved.
//

#import "BurnSoftDateTime.h"

@implementation BurnSoftDateTime

+(NSString *) getCurrentDateTime
{
    NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    return [dateFormatter stringFromDate:[NSDate date]];
}

@end
