//
//  SuckAppDelegate.h
//  Suck
//
//  Created by Christian on 8/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SuckViewController;

@interface SuckAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet SuckViewController *viewController;

@end
