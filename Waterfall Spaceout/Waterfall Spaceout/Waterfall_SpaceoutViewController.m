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

@synthesize images;

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
    
    images = [NSMutableArray arrayWithObjects:
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
     nil];
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
