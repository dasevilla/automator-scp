//
//  DSAutomatorHelper.m
//  automator-scp project http://code.google.com/p/automator-scp/
//
//  Copyright (c) 2005-2010 Douglas Stebila http://www.douglas.stebila.ca/
//  All code is provided under the New BSD license.
//

#import "DSAutomatorHelper.h"

@implementation DSAutomatorHelper

+ (NSDictionary *)constructAutomatorError:(NSString *)message {
	
	NSArray *objsArray = [NSArray arrayWithObjects:
						  [NSNumber numberWithInt:errOSAGeneralError], 
						  [NSString stringWithFormat:@"%@\n", message], 
						  nil];
	NSArray *keysArray = [NSArray arrayWithObjects:NSAppleScriptErrorNumber,
						  NSAppleScriptErrorMessage, nil];
	
    NSDictionary *errorInfo = [NSDictionary dictionaryWithObjects:objsArray forKeys:keysArray];	
	return errorInfo;
	
}

@end
