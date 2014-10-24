//
//  LocationList.m
//  LocationPOC
//
//  Created by Eric Internicola on 10/24/14.
//  Copyright (c) 2014 Brothers Magoo. All rights reserved.
//

#import "LocationList.h"

@interface LocationList() {
    NSMutableArray *locationList;
    NSMutableArray *listOfListeners;
}
-(void)notifyListenersListUpdated;
@end

@implementation LocationList
-(id)init {
    self = [super init];
    if(self) {
        locationList = [[NSMutableArray alloc]init];
        listOfListeners = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)addLocation:(CLLocation *)location {
    [locationList addObject:location];
    [self notifyListenersListUpdated];
}
-(void)addLocationList:(NSArray *)arrayOfLocation {
    for (CLLocation *loc in arrayOfLocation) {
        [locationList addObject:loc];
    }
    [self notifyListenersListUpdated];
}
-(NSUInteger)getSize {
    return locationList.count;
}

#pragma mark Listener Methods
-(void)addListener:(NSObject<LocationListListener> *)listener {
    [listOfListeners addObject:listener];
}

-(void)removeListener:(NSObject<LocationListListener> *)listener {
    [listOfListeners removeObject:listener];
}

#pragma mark Private Methods
-(void)notifyListenersListUpdated {
    for (NSObject<LocationListListener> *listener in listOfListeners) {
        [listener listUpdated:self];
    }
}
@end
