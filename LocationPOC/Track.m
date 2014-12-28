//
//  Track.m
//
//  Generated by JSON Model Generator v0.0.2 on Sun Dec 28 07:17:18 MST 2014.
//    https://github.com/intere/generator-json-models
//
//    The generator tool is licensed under the LGPL: http://www.gnu.org/licenses/lgpl-3.0.html#content
//
//

#import "Track.h"
#import "Serializer.h"

#define SERIALIZE_ASC @"asc"
#define SERIALIZE_DESC @"desc"
#define SERIALIZE_DIRTY @"dirty"
#define SERIALIZE_DIST @"dist"
#define SERIALIZE_DUR @"dur"
#define SERIALIZE_FILENAME @"filename"
#define SERIALIZE_KEY_POINTS @"key_points"
#define SERIALIZE_MAX_ALT @"max_alt"
#define SERIALIZE_MAX_SPEED @"max_speed"
#define SERIALIZE_MIN_ALT @"min_alt"
#define SERIALIZE_NAME @"name"
#define SERIALIZE_POINTS @"points"
#define SERIALIZE_RUNS @"runs"


@implementation Track

#pragma mark Serialization Methods

-(NSDictionary *)toDictionary {
	NSMutableDictionary *dict = [[NSMutableDictionary alloc]init];

	[Serializer setDict:dict doubleValue:self.asc forKey:SERIALIZE_ASC];
	[Serializer setDict:dict doubleValue:self.desc forKey:SERIALIZE_DESC];
	[Serializer setDict:dict boolValue:self.dirty forKey:SERIALIZE_DIRTY];
	[Serializer setDict:dict doubleValue:self.dist forKey:SERIALIZE_DIST];
	[Serializer setDict:dict intValue:self.dur forKey:SERIALIZE_DUR];
	[Serializer setDict:dict object:self.filename forKey:SERIALIZE_FILENAME];
	[Serializer setDict:dict object:[TrackKeyPoints toArrayOfDictionaries:self.keyPoints] forKey:SERIALIZE_KEY_POINTS];
	[Serializer setDict:dict doubleValue:self.maxAlt forKey:SERIALIZE_MAX_ALT];
	[Serializer setDict:dict doubleValue:self.maxSpeed forKey:SERIALIZE_MAX_SPEED];
	[Serializer setDict:dict doubleValue:self.minAlt forKey:SERIALIZE_MIN_ALT];
	[Serializer setDict:dict object:self.name forKey:SERIALIZE_NAME];
	[Serializer setDict:dict object:[TrackPoints toArrayOfDictionaries:self.points] forKey:SERIALIZE_POINTS];
	[Serializer setDict:dict intValue:self.runs forKey:SERIALIZE_RUNS];

	return dict;
}

-(NSString *)toJson {
	return [self toJson:NO];
}

-(NSString *)toJson:(BOOL)pretty {
	NSDictionary *dict = [self toDictionary];

	return [Serializer jsonStringFromDictionary:dict withPrettyPrint:pretty];

}

+ (Track *)fromDictionary:(NSDictionary *)dict {
	Track *object = [[Track alloc]init];
	object.asc = [Serializer getDoubleFromDict:dict forKey:SERIALIZE_ASC orDefaultTo:0.0];
	object.desc = [Serializer getDoubleFromDict:dict forKey:SERIALIZE_DESC orDefaultTo:0.0];
	object.dirty = [Serializer getBoolFromDict:dict forKey:SERIALIZE_DIRTY orDefaultTo:NO];
	object.dist = [Serializer getDoubleFromDict:dict forKey:SERIALIZE_DIST orDefaultTo:0.0];
	object.dur = [Serializer getIntegerFromDict:dict forKey:SERIALIZE_DUR orDefaultTo:0];
	object.filename = [Serializer safeGetDictString:dict withKey:SERIALIZE_FILENAME];
	object.keyPoints = [TrackKeyPoints fromArrayOfDictionaries:[Serializer getArrayFromDict:dict forKey:SERIALIZE_KEY_POINTS]];
	object.maxAlt = [Serializer getDoubleFromDict:dict forKey:SERIALIZE_MAX_ALT orDefaultTo:0.0];
	object.maxSpeed = [Serializer getDoubleFromDict:dict forKey:SERIALIZE_MAX_SPEED orDefaultTo:0.0];
	object.minAlt = [Serializer getDoubleFromDict:dict forKey:SERIALIZE_MIN_ALT orDefaultTo:0.0];
	object.name = [Serializer safeGetDictString:dict withKey:SERIALIZE_NAME];
	object.points = [TrackPoints fromArrayOfDictionaries:[Serializer getArrayFromDict:dict forKey:SERIALIZE_POINTS]];
	object.runs = [Serializer getIntegerFromDict:dict forKey:SERIALIZE_RUNS orDefaultTo:0];
	return object;
}

+(Track *)fromJsonString:(NSString *)json {
	NSDictionary *dict = [Serializer fromJsonString:json];
	return [Track fromDictionary:dict];
}

+(NSMutableArray *)fromArrayOfDictionaries:(NSArray *)array {
    NSMutableArray *result = [[NSMutableArray alloc]init];
    
    for (NSDictionary *dict in array) {
        [result addObject:[Track fromDictionary:dict]];
    }
    
    return result;
}

+(NSMutableArray *)toArrayOfDictionaries:(NSArray *)array {
    NSMutableArray *result = [[NSMutableArray alloc]init];
    
    for(Track *object in array) {
        [result addObject:[object toDictionary]];
    }
    
    return result;
}

@end
