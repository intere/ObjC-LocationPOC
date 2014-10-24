//
//  CustomLocationService.h
//  LocationPOC
//
//  Created by Eric Internicola on 10/23/14.
//  Copyright (c) 2014 Brothers Magoo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import "LocationList.h"

@interface CustomLocationService : NSObject<CLLocationManagerDelegate>
@property (nonatomic, readonly) LocationList* locationList;
-(BOOL)isTracking;
-(BOOL)startTracking;
-(BOOL)stopTracking;

+(CustomLocationService *)sharedInstance;
@end
