//
//  NSURL_QueryParserTests.m
//  NSURL+QueryParserTests
//
//  Created by 武田 祐一 on 2014/02/28.
//  Copyright (c) 2014年 Yuichi Takeda. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "NSURL+QueryParser.h"

@interface NSURL_QueryParserTests : XCTestCase

@end

@implementation NSURL_QueryParserTests

- (void)testNormalPattern
{
    NSURL *url = [NSURL URLWithString:@"http://example.com?k=v&1=2"];
    NSDictionary *query = [url parseQuery];

    XCTAssertTrue([query[@"k"] isEqualToString:@"v"], @"test for k=v");
    XCTAssertTrue([query[@"1"] isEqualToString:@"2"], @"test for 1=2");

}

@end
