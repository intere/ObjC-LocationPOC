//
//  Log.h
//  LocationPOC
//
//  Created by Eric Internicola on 1/13/15.
//  Copyright (c) 2015 Brothers Magoo. All rights reserved.
//

#ifndef LocationPOC_Log_h
#define LocationPOC_Log_h

#import "Pods/TestFlight.h"
#import "DDLog.h"
#import "DDASLLogger.h"
#import "DDTTYLogger.h"
#import "DDFileLogger.h"

// Log Level
static const int ddLogLevel = LOG_LEVEL_DEBUG;

//#define NSLog(__FORMAT__, ...) TFLog((@"%s [Line %d] " __FORMAT__), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)

#define EILogDebug(__FORMAT__, ...) DDLogDebug((@"%s [Line %d] " __FORMAT__), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#define EILogInfo(__FORMAT__, ...) DDLogInfo((@"%s [Line %d] " __FORMAT__), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#define EILogWarn(__FORMAT__, ...) DDLogWarn((@"%s [Line %d] " __FORMAT__), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#define EILogError(__FORMAT__, ...) DDLogError((@"%s [Line %d] " __FORMAT__), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#define EILogVerbose(__FORMAT__, ...) DDLogVerbose((@"%s [Line %d] " __FORMAT__), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)

#endif
