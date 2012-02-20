//
//  DSDownloadWithSCP.h
//  automator-scp project http://code.google.com/p/automator-scp/
//
//  Copyright (c) 2005-2010 Douglas Stebila http://www.douglas.stebila.ca/
//  All code is provided under the New BSD license.
//

#import <Cocoa/Cocoa.h>
#import <Automator/AMBundleAction.h>
#import "DSDownloadWithSCP_version.h"

@interface DSDownloadWithSCP : AMBundleAction {
	IBOutlet NSTokenField* sourcePathsTokenField;
	NSMutableArray *temporaryFoldersCreated;
}

- (void)opened;

- (id)runWithInput:(id)input fromAction:(AMAction *)anAction error:(NSDictionary **)errorInfo;

- (void)closed;

@end