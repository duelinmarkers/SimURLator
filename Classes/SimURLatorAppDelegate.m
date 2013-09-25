// Copyright 2009 ThoughtWorks, Inc. See License.txt for licensing info.

#import "SimURLatorAppDelegate.h"
#import "SimURLatorViewController.h"

@implementation SimURLatorAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)options
{
  [window addSubview:viewController.view];
  [window makeKeyAndVisible];
  return YES;
}

- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation
{
    [self handleLaunchURL:url];
    return YES;
}

-(void) handleLaunchURL:(NSURL*)url
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Incoming URL"
                                                        message:[url absoluteString]
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
    [alertView show];
}

- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}

@end
