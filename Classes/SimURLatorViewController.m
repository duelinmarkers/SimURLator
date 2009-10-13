// Copyright 2009 ThoughtWorks, Inc. See License.txt for licensing info.

#import "SimURLatorViewController.h"

@implementation SimURLatorViewController

@synthesize urlField = _urlField;

- (IBAction)checkURL {
  NSString *urlString = [_urlField text];
  NSLog(@"Checking URL: %@", urlString);
  NSString *message;
  NSString *title;
  if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:urlString]]) {
    title = @"Yes!";
    message = @"Can open URL! :)";
  } else {
    title = @"No!";
    message = @"Cannot open URL. :(";
  }
  UIAlertView *alertView = [[[UIAlertView alloc] initWithTitle:title 
                                                       message:message 
                                                      delegate:nil 
                                             cancelButtonTitle:@"OK" 
                                             otherButtonTitles:nil] autorelease];
  [alertView show];
}

- (IBAction)openURL {
  NSString *urlString = [_urlField text];
  NSLog(@"Opening URL: %@", urlString);
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString]];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
  return YES;
}

- (void)didReceiveMemoryWarning {
  // Releases the view if it doesn't have a superview.
  [super didReceiveMemoryWarning];
  // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
  [self setUrlField:nil];
}

- (void)dealloc {
    [super dealloc];
}

@end
