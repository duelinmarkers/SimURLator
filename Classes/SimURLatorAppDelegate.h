//
//  SimURLatorAppDelegate.h
//  SimURLator
//
//  Created by hume on 10/9/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SimURLatorViewController;

@interface SimURLatorAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SimURLatorViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SimURLatorViewController *viewController;

@end

