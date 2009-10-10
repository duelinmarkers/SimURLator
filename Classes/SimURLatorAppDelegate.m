//
//  SimURLatorAppDelegate.m
//  SimURLator
//
//  Created by hume on 10/9/09.
//  Copyright ThoughtWorks 2009. All rights reserved.
//

#import "SimURLatorAppDelegate.h"
#import "SimURLatorViewController.h"

@implementation SimURLatorAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)options {
  [window addSubview:viewController.view];
  [window makeKeyAndVisible];
  if (options != nil) {
    NSURL *url = (NSURL *)[options objectForKey:UIApplicationLaunchOptionsURLKey];
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Incoming URL" 
                                                        message:[url absoluteString] 
                                                       delegate:nil 
                                              cancelButtonTitle:@"OK" 
                                              otherButtonTitles:nil];
    [alertView show];
  }
  return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
