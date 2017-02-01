//
//  DBManager.h
//  SQLite3DBSample
//
//  Created by burnsoft on 2/3/15.
//  Copyright (c) 2015 burnsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DBManager : NSObject

@property (nonatomic, strong) NSMutableArray *arrColumnNames;
@property (nonatomic) int affectedRows;
@property (nonatomic) long long lastInsertedRowID;;

-(instancetype)initWithDatabaseFileName:(NSString *)dbFilename;
-(NSArray *)loadDataFromDB:(NSString *)query;
-(void)executeQuery:(NSString *)query;
// Translate Errors from SQLITE integer to English
-(NSString *)dbErrors:(int) ret;
//Pass the Database Name to find the Path of the database
-(NSString *) getDatabasePath :(NSString *) DBNAME;
//Pass the name of the database to see if we need to copy the database from the application directory to the documents directory
-(void) copyDbIfNeeded :(NSString *) DBNAME MessageHandler:(NSString **) msg;
//Pass the Database name to see if the database is in the path that we need it to be in
-(void)checkDB :(NSString *) DBNAME MessageHandler:(NSString **) msg;
//Retore the Factory Database by deleting the database in the user docs and copying it back over.
-(void) restoreFactoryDB :(NSString *) DBNAME MessageHandler:(NSString **) msg;
@end
