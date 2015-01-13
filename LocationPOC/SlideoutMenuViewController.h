//
//  SlideoutMenuViewControllerTableViewController.h
//  LocationPOC
//
//  Created by Eric Internicola on 1/3/15.
//  Copyright (c) 2015 Brothers Magoo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SlideoutMenuViewController : UITableViewController
- (IBAction)unwindToMenuViewController:(UIStoryboardSegue *)segue;
@end
