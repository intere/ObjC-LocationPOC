//
//  ViewController.m
//  LocationPOC
//
//  Created by Eric Internicola on 10/22/14.
//  Copyright (c) 2014 Brothers Magoo. All rights reserved.
//

#import "ViewController.h"
#import "CustomLocationService.h"

@interface ViewController ()
-(void)configureButton;
-(void)updatePointsLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureButton];
    [[CustomLocationService sharedInstance].locationList addListener:self];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickedTrackingButton:(UIButton *)sender {
    if([[CustomLocationService sharedInstance] isTracking]) {
        [[CustomLocationService sharedInstance] stopTracking];
    } else {
        [[CustomLocationService sharedInstance] startTracking];
    }
    
    [self configureButton];
}

# pragma mark LocationListListener Methods
-(void)listUpdated:(LocationList *)locationList {
    [self performSelectorOnMainThread:@selector(updatePointsLabel) withObject:nil waitUntilDone:NO];
}

# pragma mark Private Methods
-(void)updatePointsLabel {
    NSUInteger points = [[CustomLocationService sharedInstance].locationList getSize];
    [self.pointsLabel setText:[NSString stringWithFormat:@"Points: %lu", (unsigned long)points]];
}

-(void)configureButton {
    if([[CustomLocationService sharedInstance] isTracking]) {
        [self.trackingButton setTitle:@"Stop Tracking" forState:UIControlStateNormal];
        [self.trackingButton setBackgroundColor:[UIColor redColor]];
    } else {
        [self.trackingButton setTitle:@"Start Tracking" forState:UIControlStateNormal];
        [self.trackingButton setBackgroundColor:[UIColor greenColor]];
    }
}
@end
