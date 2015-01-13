//
//  TrackTest.m
//
//  Generated by JSON Model Generator v0.0.2 on Tue Jan 13 16:44:19 MST 2015.
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
	XCTAssertEqualWithAccuracy(602.74169921875, deserialized.asc, 0.01, @"Failed to properly deserialize the asc");
}

-(void)testDesc {
	XCTAssertEqualWithAccuracy(600.237548828125, deserialized.desc, 0.01, @"Failed to properly deserialize the desc");
}

-(void)testDist {
	XCTAssertEqualWithAccuracy(8451.5199981375, deserialized.dist, 0.01, @"Failed to properly deserialize the dist");
}

-(void)testDur {
	XCTAssertEqual((NSInteger)2699, deserialized.dur, @"Failed to properly deserialize the dur");
}

-(void)testFilename {
	XCTAssertEqualObjects(@"Track_2014-12-30 21:16:14 +0000.json", deserialized.filename, @"Failed to properly deserialize the filename");
}

-(void)testTheId {
	XCTAssertEqualObjects(@"abc123", deserialized.theId, @"Failed to properly deserialize the theId");
}

-(void)testMaxAlt {
	XCTAssertEqualWithAccuracy(3261.561853408813, deserialized.maxAlt, 0.01, @"Failed to properly deserialize the maxAlt");
}

-(void)testMaxSpeed {
	XCTAssertEqualWithAccuracy(14.33802506350447, deserialized.maxSpeed, 0.01, @"Failed to properly deserialize the maxSpeed");
}

-(void)testMetadataId {
	XCTAssertEqualObjects(@"def456", deserialized.metadataId, @"Failed to properly deserialize the metadataId");
}

-(void)testMinAlt {
	XCTAssertEqualWithAccuracy(2767.097253799438, deserialized.minAlt, 0.01, @"Failed to properly deserialize the minAlt");
}

-(void)testName {
	XCTAssertEqualObjects(@"Track_2014-12-30 21:16:14 +0000", deserialized.name, @"Failed to properly deserialize the name");
}

-(void)testRuns {
	XCTAssertEqual((NSInteger)2, deserialized.runs, @"Failed to properly deserialize the runs");
}

-(void)testAppVersion {
	XCTAssertEqualObjects(@"1.6.0", deserialized.appVersion, @"Failed to properly deserialize the appVersion");
}

@end