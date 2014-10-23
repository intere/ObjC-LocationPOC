//
//  CustomLocationService.h
//  LocationPOC
//
//  Created by Eric Internicola on 10/23/14.
//  Copyright (c) 2014 Brothers Magoo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface CustomLocationService : NSObject<CLLocationManagerDelegate>
-(BOOL)isTracking;
-(BOOL)startTracking;
-(BOOL)stopTracking;


+(CustomLocationService *)sharedInstance;
@end
