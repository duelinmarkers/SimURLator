//
//  SimURLatorAppDelegate.m
//  SimURLator
//
//  Created by hume on 10/9/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "SimURLatorAppDelegate.h"
#import "SimURLatorViewController.h"

@implementation SimURLatorAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
