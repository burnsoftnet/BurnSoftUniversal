//
//  BurnSoftFileSystem.h
//  BurnSoftUniversal
//
//  Created by burnsoft on 8/12/17.
//  Copyright © 2017 burnsoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BurnSoftFileSystem : NSObject
#pragma mark CopyFile
// Simplify the copy and replace method with overwriteoption
+(BOOL) copyFileFromFilePath:(NSString *) fromPath ToNewPath:(NSString *) toPath ErrorMessage:(NSString **) msg;

#pragma mark Delete File byPath
// Pass the path and file to delete that file
+(BOOL)DeleteFileByPath:(NSString *) sPath ErrorMessage:(NSString **) msg;

#pragma mark Load Files in Path by Extension
//Load all the files in the target path that have a certain type of extension
+(NSArray *) getCertainFilefromPath:(NSString *) sPath ByExtension:(NSString *) myExt;

#pragma mark Load Files in Local Directory by Extension
// Load all the files in the Local docuemtns directory by a certain extention
+(NSArray *) getCertainFilesFromDocumentsByExtension:(NSString *) myExt;

#pragma mark Return Full Path of App Documents with file name
//Return Full Path of App Documents with file name attached
+(NSString *) returnFullPathwithFileName:(NSString *) myFile;

#pragma mark CopyFile 2
// Simplify the copy and replace method with overwriteoption
+(BOOL) copyFileFrom:(NSString *) sFrom To:(NSString *) sTo ErrorMessage:(NSString **) errorMessage;

#pragma mark Create a Directory
//Create a directory if it doesn't already exist
+(BOOL)createDirectoryIfNotExists:(NSString *) sPath ErrorMessage:(NSString **) errMsg;

#pragma mark Convert Bool to String
//Convert a boolean value to string Yes or No
+(NSString *) convertBOOLtoString:(BOOL) bValue;

#pragma mark Get File Exteension From File Path
// Get the extension of the file from the full path
+(NSString *) getFileExtensionbyPath:(NSString *) filePath;
@end
