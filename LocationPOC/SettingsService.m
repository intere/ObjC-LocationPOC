//
//  SettingsService.m
//  LocationPOC
//
//  Created by Eric Internicola on 1/13/15.
//  Copyright (c) 2015 Brothers Magoo. All rights reserved.
//

#import "SettingsService.h"

#define KEY_IS_TRACKING @"setting.is.tracking"

static SettingsService *sharedSettingsService;

@implementation SettingsService

-(void)setTracking:(BOOL)isTracking {
    [[NSUserDefaults standardUserDefaults] setBool:isTracking forKey:KEY_IS_TRACKING];
}

-(BOOL)isTracking {
    return [[NSUserDefaults standardUserDefaults] boolForKey:KEY_IS_TRACKING];
}

+(SettingsService *)getSharedInstance {
    if(!sharedSettingsService) {
        sharedSettingsService = [[SettingsService alloc]init];
    }
    return sharedSettingsService;
}
@end
