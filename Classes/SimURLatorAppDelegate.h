// Copyright 2009 ThoughtWorks, Inc. See License.txt for licensing info.

#import <UIKit/UIKit.h>

@class SimURLatorViewController;

@interface SimURLatorAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SimURLatorViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SimURLatorViewController *viewController;

@end

