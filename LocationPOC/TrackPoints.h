//
//  TrackPoints.h
//
//  Generated by JSON Model Generator v0.0.2 on Tue Jan 13 16:44:19 MST 2015.
//    https://github.com/intere/generator-json-models
//
//    The generator tool is licensed under the LGPL: http://www.gnu.org/licenses/lgpl-3.0.html#content
//
//

#import <Foundation/Foundation.h>

@interface TrackPoints : NSObject

//
// Properties
//

@property (nonatomic) double alt;
@property (nonatomic) NSInteger dist;
@property (nonatomic) NSInteger hAcc;
@property (nonatomic) double lat;
@property (nonatomic) double lon;
@property (nonatomic) double speed;
@property (nonatomic) double time;
@property (nonatomic) NSInteger vAcc;


/**
 * Converts this TrackPoints to a NSDictionary object (as a serialization mechanism).
 */
-(NSDictionary *)toDictionary;

/**
 * Converts this TrackPoints to a JSON String (as a serializaton mechanism).
 */
-(NSString *)toJson;
/**
 * Converts this TrackPoints to a JSON String (as a serialization mechanism) with optional pretty print.
 */
-(NSString *)toJson:(BOOL)pretty;

/**
 * "Deserializes" the provided dictionary into a TrackPoints.
 */
+(TrackPoints *)fromDictionary:(NSDictionary *)dict;

/**
 * Deserializes the provided JSON String into a TrackPoints.
 */
+(TrackPoints *)fromJsonString:(NSString *)json;
/**
 * "Deserializes" the provided array of dictionaries into an array of TrackPoints.
 */
+(NSMutableArray *)fromArrayOfDictionaries:(NSArray *)array;

/**
 * "Serializes" the provided Array of TrackPoints to an Array of Dictionaries.
 */
+(NSMutableArray *)toArrayOfDictionaries:(NSArray *)array;

@end
