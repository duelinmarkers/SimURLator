// Copyright 2009 ThoughtWorks, Inc. See License.txt for licensing info.

#import <UIKit/UIKit.h>

@interface SimURLatorViewController : UIViewController {
 @private
  UITextField *_urlField;
}

@property (nonatomic, retain) IBOutlet UITextField *urlField;
- (IBAction)checkURL;
- (IBAction)openURL;

@end
