//
//  SuckViewController.m
//  Suck
//
//  Created by Christian on 8/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SuckViewController.h"

@implementation SuckViewController
@synthesize container;
@synthesize testView;
@synthesize duration;
@synthesize slider;

- (void)dealloc
{
    [testView release];
    [duration release];
    [slider release];
    [container release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Attach tap detector
    UITapGestureRecognizer *singleFingerTap = 
    [[UITapGestureRecognizer alloc] initWithTarget:self 
                                            action:@selector(suckView:)];
    //singleFingerTap.cancelsTouchesInView = NO;
    [container addGestureRecognizer:singleFingerTap];
    [singleFingerTap release];
    
    // Setup test image
    UIImage *testImage = [UIImage imageNamed:@"squares_transparent_200x200.png"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:testImage];
    [testView addSubview:imageView];
    [imageView release];
    
    

}

- (void)viewDidUnload
{
    [self setTestView:nil];
    [self setDuration:nil];
    [self setSlider:nil];
    [self setContainer:nil];
    [super viewDidUnload];
    
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)suckView:(UITapGestureRecognizer *)recognizer {
    NSLog(@"%s", __FUNCTION__);
    
    CGPoint location = [recognizer locationInView:recognizer.view];
    NSLog(@"Point (%.2f, %.2f)", location.x, location.y);

    [testView setAlpha:0];
    
    [UIView beginAnimations:@"suck" context:NULL];
    [UIView setAnimationTransition:103 forView:testView cache:YES];
    [UIView setAnimationDuration:round(self.slider.value)];
    [UIView setAnimationPosition:location];
    [UIView commitAnimations];
    
}

- (IBAction)resetView:(id)sender {
    NSLog(@"%s", __FUNCTION__);
    
    [testView setAlpha:1];
}

- (IBAction)updateLabel:(id)sender {
    [self.duration setText:[NSString stringWithFormat:@"%.0fs", round(self.slider.value)]];
}

@end
