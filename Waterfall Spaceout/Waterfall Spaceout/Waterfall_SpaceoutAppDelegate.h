//
//  Waterfall_SpaceoutAppDelegate.h
//  Waterfall Spaceout
//
//  Created by jrichards on 7/16/11.
//  Copyright 2011 SETI INSTITUTE. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Waterfall_SpaceoutViewController;

@interface Waterfall_SpaceoutAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet Waterfall_SpaceoutViewController *viewController;

@end
