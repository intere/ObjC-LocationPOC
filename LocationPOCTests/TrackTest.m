//
//  TrackTest.m
//
//  Generated by JSON Model Generator v0.0.2 on Sun Dec 28 07:17:18 MST 2014.
//    https://github.com/intere/generator-json-models
//
//    The generator tool is licensed under the LGPL: http://www.gnu.org/licenses/lgpl-3.0.html#content
//
//

#import <XCTest/XCTest.h>
#import "Track.h"
#import "Serializer.h"

@interface TrackTest : XCTestCase{
	NSString *sampleJson;
	Track *deserialized;
}
@end

#define DATE_LONG 1411065116782
#define DATE_ISO @"2014-09-18T11:31:56.782-07:00"
#define DATE_ZULU @"2014-09-18T11:31:56.782Z"
#define TEST_KEY @"date"

@implementation TrackTest

- (void)setUp
{
	[super setUp];
	NSString *pathToResource = [[NSBundle bundleForClass:self.class] pathForResource:@"track" ofType:@"json"];
	NSError *error = nil;
	sampleJson = [NSString stringWithContentsOfFile:pathToResource encoding:NSUTF8StringEncoding error:&error];
	if(error) {
		XCTFail(@"Failed to load file: contests.json: %@", error.localizedDescription);
	}
	NSDictionary *dict = [Serializer fromJsonString:sampleJson];
	deserialized = [Track fromDictionary:dict];
	XCTAssertNotNil(deserialized, @"The Track failed to deserialize properly");
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

-(void)testAsc {
	XCTAssertEqualWithAccuracy(1430.554443359375, deserialized.asc, 0.01, @"Failed to properly deserialize the asc");
}

-(void)testDesc {
	XCTAssertEqualWithAccuracy(1334.4248046875, deserialized.desc, 0.01, @"Failed to properly deserialize the desc");
}

-(void)testDist {
	XCTAssertEqualWithAccuracy(10605.0923387252, deserialized.dist, 0.01, @"Failed to properly deserialize the dist");
}

-(void)testDur {
	XCTAssertEqual((NSInteger)2909, deserialized.dur, @"Failed to properly deserialize the dur");
}

-(void)testFilename {
	XCTAssertEqualObjects(@"Track_2014-12-27 16:03:50 +0000.json", deserialized.filename, @"Failed to properly deserialize the filename");
}

-(void)testMaxAlt {
	XCTAssertEqualWithAccuracy(3424.172204971313, deserialized.maxAlt, 0.01, @"Failed to properly deserialize the maxAlt");
}

-(void)testMaxSpeed {
	XCTAssertEqualWithAccuracy(11.5018627703884, deserialized.maxSpeed, 0.01, @"Failed to properly deserialize the maxSpeed");
}

-(void)testMinAlt {
	XCTAssertEqualWithAccuracy(2788.198328018188, deserialized.minAlt, 0.01, @"Failed to properly deserialize the minAlt");
}

-(void)testName {
	XCTAssertEqualObjects(@"Track_2014-12-27 16:03:50 +0000", deserialized.name, @"Failed to properly deserialize the name");
}

-(void)testRuns {
	XCTAssertEqual((NSInteger)3, deserialized.runs, @"Failed to properly deserialize the runs");
}

@end
