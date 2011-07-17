//
//  Waterfall_SpaceoutViewController.m
//  Waterfall Spaceout
//
//  Created by jrichards on 7/16/11.
//  Copyright 2011 SETI INSTITUTE. All rights reserved.
//

//Hi

#import "Waterfall_SpaceoutViewController.h"

@implementation Waterfall_SpaceoutViewController

@synthesize images, imageView;
@synthesize repeatingTimer;
@synthesize imageIndex;
@synthesize coords;

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    images = [[NSMutableArray arrayWithObjects:
              [UIImage imageNamed:@"1.png"],
              [UIImage imageNamed:@"2.png"],
              [UIImage imageNamed:@"3.png"],
              [UIImage imageNamed:@"4.png"],
              [UIImage imageNamed:@"5.png"],
              [UIImage imageNamed:@"6.png"],
              [UIImage imageNamed:@"7.png"],
              [UIImage imageNamed:@"8.png"],
              [UIImage imageNamed:@"9.png"],
              [UIImage imageNamed:@"10.png"],
              [UIImage imageNamed:@"11.png"],
              [UIImage imageNamed:@"12.png"],
              [UIImage imageNamed:@"13.png"],
     nil] retain];
    
    imageIndex = 0;
    
    UIImage *image = [images objectAtIndex:imageIndex];
    //CGPoint pnt = CGPointMake(0.0, 0.0);
    //UIImage *image2 = [images objectAtIndex:2];
    
    
    imageView.image = image;
    //[image2 drawAtPoint:pnt blendMode:kCGBlendModeNormal alpha:0.5];
    
    //Start the timer
    repeatingTimer = [[NSTimer scheduledTimerWithTimeInterval:1.25
                      target:self selector:@selector(commandTimer:)
                      userInfo:nil repeats:YES] retain];

    

    
    
}


- (void)commandTimer:(NSTimer*)theTimer
{
    
    
    imageIndex++;
    if(imageIndex == 13) imageIndex = 0;
    if(imageIndex ==6) imageIndex = 11;
    
    
    [[UIScreen mainScreen] applicationFrame];

    
    UIImageView *myImageView = [[UIImageView alloc] initWithImage:[images objectAtIndex:imageIndex]];
    myImageView.bounds = CGRectMake(0,0,320,480);
    [myImageView setContentMode:UIViewContentModeScaleToFill];
    
    myImageView.center = CGPointMake(160, 240);
    myImageView.alpha = 0.0;
    [self.view addSubview:myImageView];
    [UIView animateWithDuration:1.0 animations:^{
        myImageView.alpha = 1.0;
    }];
    
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch * touch = [touches anyObject];
    CGPoint pos = [touch locationInView: [UIApplication sharedApplication].keyWindow];    
    coords.text = [NSString stringWithFormat:@"X: %.0f Y: %.0f", pos.x, pos.y];
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [[event touchesForView:self.view] anyObject];    
    CGPoint pos = [touch locationInView:touch.view];    
    coords.text = [NSString stringWithFormat:@"X: %.0f Y: %.0f", pos.x, pos.y];
    
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}
    
    


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
