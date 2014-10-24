//
//  LocationList.h
//  LocationPOC
//
//  Created by Eric Internicola on 10/24/14.
//  Copyright (c) 2014 Brothers Magoo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@protocol LocationListListener;

@interface LocationList : NSObject
// Primary Interface Methods
-(void)addLocation:(CLLocation *)location;
-(void)addLocationList:(NSArray *)arrayOfLocation;
-(NSUInteger)getSize;

// Listener Methods
-(void)addListener:(NSObject<LocationListListener>*)listener;
-(void)removeListener:(NSObject<LocationListListener>*)listener;
@end

@protocol LocationListListener <NSObject>
-(void)listUpdated:(LocationList *)locationList;
@end