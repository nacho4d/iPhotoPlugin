//
//  ExampleExport.m
//  ExampleExport
//
//  Created by Guillermo Enriquez on 12/5/11.
//  Copyright (c) 2011 nacho4d. All rights reserved.
//

#import "ExampleExport.h"

@implementation ExampleExport


- (id)description {
	// @@change this
    return NSLocalizedString(@"ExampleExport", @"Name of the Plugin");
}

- (id)name {
	// @@change this
    return NSLocalizedString(@"ExampleExport", @"Name of the Project");
}

- (void)cancelExport {
	NSLog(@"ExampleExport -- cancelExport");
}

- (void)unlockProgress {
	NSLog(@"ExampleExport -- unlockProgress");
}

- (void)lockProgress {
	NSLog(@"ExampleExport -- lockProgress");
}

- (void *)progress { 
	return (void *)@""; 
}

- (BOOL)handlesMovieFiles {
	NSLog(@"%@", NSStringFromSelector(_cmd));
	return NO;
}

- (void)performExport:(id)fp8 {
	NSLog(@"ExampleExport -- performExport");
}

- (void)startExport:(id)fp8 {
	//fp8 argument is an NSString (in fact is one of its clusters NSStorePath2)
    NSLog(@"ExampleExport -- %@ start", NSStringFromSelector(_cmd));
	
	// open the file passed in as a parameter
    FILE *stream = fopen([fp8 UTF8String], "w");
	NSLog(@"Exporting to: %s", [fp8 UTF8String]);

    fprintf(stream, "iPhoto Example Export\n");
	fprintf(stream, "=====================\n");
    //fprintf(stream, "Album Name: %s\n", [[exportManager albumName] UTF8String]);
	//fprintf(stream, "Album Comments: %s\n", [[exportManager albumComments] UTF8String]);
	fprintf(stream, "Album Count: %u\n", [exportManager albumCount]);
	for (int i = 0; i < [exportManager albumCount]; i++) {
		fprintf(stream, "Album Name (%d): %s\n", i+1, [[exportManager albumNameAtIndex:i] UTF8String]);
		fprintf(stream, "Album Comments (%d): %s\n", i+1, [[exportManager albumCommentsAtIndex:i] UTF8String]);
	}

	for(int i = 0; i < [exportManager imageCount]; i++) {
		fprintf(stream, "\nImage %d\n", (i+1));
		fprintf(stream, "-------------\n");
		fprintf(stream, "Path: %s\n", [[exportManager imagePathAtIndex: i] UTF8String]);
		//fprintf(stream, "Caption: %s\n", [[exportManager imageCaptionAtIndex:i] UTF8String]);
        fprintf(stream, "Date: %s\n", [[[exportManager imageDateAtIndex: i] description] UTF8String]);
		
		NSArray *keywords = [exportManager imageKeywordsAtIndex: i];
		for(int j = 0; j < [keywords count]; j++) {
			fprintf(stream, "Keyword: %s\n", [[keywords objectAtIndex:j] UTF8String]);
		}
		fprintf(stream, "Comments: %s\n", [[exportManager imageCommentsAtIndex: i] UTF8String]);
	}
	
    fclose(stream);
	
	NSLog(@"ExampleExport -- %@ end", NSStringFromSelector(_cmd));
}

- (BOOL)validateUserCreatedPath:(id)fp8 {
    return YES;
}

- (BOOL)treatSingleSelectionDifferently {
    return NO;
}

- (id)defaultDirectory {
    return [NSString stringWithFormat: @"%@/Pictures/web", NSHomeDirectory()];
}

- (id)defaultFileName {
	// @@ change this
	return @"ExampleOutput.txt";
}

- (id)getDestinationPath {
	// @@ change this
	return [NSString stringWithFormat: @"%@/ExampleOutput.txt", NSHomeDirectory()];
}

- (BOOL)wantsDestinationPrompt {
    return YES;
}

- (id)requiredFileType {
	return @"txt";
}

- (void)viewWillBeDeactivated {
	
}

- (void)viewWillBeActivated {
	
}

- (id)lastView {
    // You shouldn't need to change this
	return lastView;
}

- (id)firstView {
    // You shouldn't need to change this
	return firstView;
}

- (id)settingsView {
    // You shouldn't need to change this
	return settingsBox;
}

- (void)clickExport { 
	NSLog(@"ExampleExport -- clickExport");
}

- (id)initWithExportImageObj:(id)fp8 {
	self = [super init];
   	if (self) {
		exportManager = fp8;
	}
	return self;
}

@end
