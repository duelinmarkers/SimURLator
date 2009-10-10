//
//  SimURLatorViewController.h
//  SimURLator
//
//  Created by hume on 10/9/09.
//  Copyright ThoughtWorks 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimURLatorViewController : UIViewController {
 @private
  UITextField *_urlField;
}

@property (nonatomic, retain) IBOutlet UITextField *urlField;
- (IBAction)checkURL;
- (IBAction)openURL;

@end
