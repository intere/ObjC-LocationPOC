//
//  SettingsService.h
//  LocationPOC
//
//  Created by Eric Internicola on 1/13/15.
//  Copyright (c) 2015 Brothers Magoo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SettingsService : NSObject

/** Tell me if the app is tracking or not.  */
-(void)setTracking:(BOOL)isTracking;
/** Is/Was the app tracking?  */
-(BOOL)isTracking;
/** Get the current Date/Time.  */
-(NSInteger)whatTimeIsIt;

+(SettingsService *)getSharedInstance;
@end
