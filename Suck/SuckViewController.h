//
//  SuckViewController.h
//  Suck
//
//  Created by Christian on 8/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SuckViewController : UIViewController {
    
    UIView *testView;
    UILabel *duration;
    UISlider *slider;

    UIView *container;
}

@property (nonatomic, retain) IBOutlet UIView *container;
@property (nonatomic, retain) IBOutlet UIView *testView;
@property (nonatomic, retain) IBOutlet UILabel *duration;
@property (nonatomic, retain) IBOutlet UISlider *slider;

- (void)suckView:(UITapGestureRecognizer *)recognizer;
- (IBAction)resetView:(id)sender;
- (IBAction)updateLabel:(id)sender;

@end
