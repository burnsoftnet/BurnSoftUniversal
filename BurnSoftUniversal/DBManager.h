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

#pragma mark Init Database with File name
//Initialize the database with the file name
-(instancetype)initWithDatabaseFileName:(NSString *)dbFilename;

#pragma mark Load Data from DB into Array
// Pass a STL statement to have the data loaded into an Array
-(NSArray *)loadDataFromDB:(NSString *)query;

#pragma mark Execute SQL statement
//pass a sqlstatement to be executed, usually INSERT,UPDATE, DELETE, etc.
-(void)executeQuery:(NSString *)query;

#pragma mark Error Handling
//NOTE: Translate Errors from SQLITE integer to English
-(NSString *)dbErrors:(int) ret;

#pragma mark Get Database Path
//NOTE: Pass the Database Name to find the Path of the database
-(NSString *) getDatabasePath :(NSString *) DBNAME;

#pragma mark Copy DB if Needed
//NOTE: Pass the name of the database to see if we need to copy the database from the application directory to the documents directory
-(void) copyDbIfNeeded :(NSString *) DBNAME MessageHandler:(NSString **) msg;

#pragma mark Check Database
//NOTE: Pass the Database name to see if the database is in the path that we need it to be in
-(void)checkDB :(NSString *) DBNAME MessageHandler:(NSString **) msg;

#pragma mark Restory Factory Database
//NOTE: Retore the Factory Database by deleting the database in the user docs and copying it back over.
-(void) restoreFactoryDB :(NSString *) DBNAME MessageHandler:(NSString **) msg;
@end
