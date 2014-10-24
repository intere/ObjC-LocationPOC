//
//  ViewController.h
//  LocationPOC
//
//  Created by Eric Internicola on 10/22/14.
//  Copyright (c) 2014 Brothers Magoo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LocationList.h"

@interface ViewController : UIViewController<LocationListListener>
@property (weak, nonatomic) IBOutlet UIButton *trackingButton;
@property (weak, nonatomic) IBOutlet UILabel *pointsLabel;
- (IBAction)clickedTrackingButton:(UIButton *)sender;
@end

