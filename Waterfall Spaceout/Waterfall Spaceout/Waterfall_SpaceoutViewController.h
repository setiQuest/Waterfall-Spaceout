//
//  Waterfall_SpaceoutViewController.h
//  Waterfall Spaceout
//
//  Created by jrichards on 7/16/11.
//  Copyright 2011 SETI INSTITUTE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Waterfall_SpaceoutViewController : UIViewController {
    
    NSMutableArray *images;
    IBOutlet UIImageView *imageView;
    
    NSTimer *repeatingTimer;
    
    int imageIndex;
    
}

@property (nonatomic, retain) NSMutableArray *images;
@property (nonatomic, retain) IBOutlet UIImageView *imageView;

@property (retain) NSTimer* repeatingTimer;
@property int imageIndex;

- (void)commandTimer:(NSTimer*)theTimer;

@end
