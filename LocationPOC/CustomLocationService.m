//
//  CustomLocationService.m
//  LocationPOC
//
//  Created by Eric Internicola on 10/23/14.
//  Copyright (c) 2014 Brothers Magoo. All rights reserved.
//

#import "CustomLocationService.h"

@interface CustomLocationService() {
    BOOL tracking;
    CLLocationManager *locationManager;
}

@end

static CustomLocationService* sharedCustomLocationService;

@implementation CustomLocationService
-(id)init {
    self = [super init];
    if(self) {
        tracking = NO;
        locationManager = [[CLLocationManager alloc] init];
        locationManager.delegate = self;
    }
    
    return self;
}

-(BOOL)isTracking {
    return tracking;
}

-(BOOL)startTracking {
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    locationManager.pausesLocationUpdatesAutomatically = YES;
    
    // If location services allow for location change monitoring:
    if([CLLocationManager locationServicesEnabled]) {
        [locationManager startUpdatingLocation];
        NSLog(@"LocationManager: Starting to track location updates");
        tracking = YES;
    } else {
        NSLog(@"LocationManager: significantLocationChangeMonitoring was not available");
        tracking = NO;
    }
    return [self isTracking];
}

-(BOOL)stopTracking {
    if([self isTracking]) {
        [locationManager stopMonitoringSignificantLocationChanges];
        NSLog(@"LocationManager: Stopped taking location updates");
    } else {
        return NO;
    }
    return YES;
}

#pragma mark CLLocationManagerDelegate methods
/*
 *  locationManager:didUpdateLocations:
 *
 *  Discussion:
 *    Invoked when new locations are available.  Required for delivery of
 *    deferred locations.  If implemented, updates will
 *    not be delivered to locationManager:didUpdateToLocation:fromLocation:
 *
 *    locations is an array of CLLocation objects in chronological order.
 */
-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    // TODO
}

/*
 *  Discussion:
 *    Invoked when location updates are automatically paused.
 */
-(void)locationManagerDidPauseLocationUpdates:(CLLocationManager *)manager {
    NSLog(@"Location Managed Paused Location Updates");
}

/*
 *  Discussion:
 *    Invoked when location updates are automatically resumed.
 *
 *    In the event that your application is terminated while suspended, you will
 *	  not receive this notification.
 */
-(void)locationManagerDidResumeLocationUpdates:(CLLocationManager *)manager {
    NSLog(@"Location Manager Resumed Location Updates");
}

/*
 *  locationManager:didFailWithError:
 *
 *  Discussion:
 *    Invoked when an error has occurred. Error types are defined in "CLError.h".
 */
-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    NSLog(@"Location Manager had an error: %@", error.localizedDescription);
}

/*
 *  locationManager:didFinishDeferredUpdatesWithError:
 *
 *  Discussion:
 *    Invoked when deferred updates will no longer be delivered. Stopping
 *    location, disallowing deferred updates, and meeting a specified criterion
 *    are all possible reasons for finishing deferred updates.
 *
 *    An error will be returned if deferred updates end before the specified
 *    criteria are met (see CLError).
 */
-(void)locationManager:(CLLocationManager *)manager didFinishDeferredUpdatesWithError:(NSError *)error {
    NSLog(@"Location Manager Finished Deferred Updates, with an error: %@", error.localizedDescription);
}

#pragma mark Singleton Accessor Method
+(CustomLocationService *)sharedInstance {
    if(!sharedCustomLocationService) {
        sharedCustomLocationService = [[CustomLocationService alloc]init];
    }
    return sharedCustomLocationService;
}
@end
