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
    NSDictionary *result = [url parseQuery];
    NSDictionary *expected = @{@"k": @"v", @"1": @"2"};
    XCTAssertEqualObjects(result, expected, @"normal case");
}

- (void)testWithoutQuery
{
    NSURL *url = [NSURL URLWithString:@"http://example.com"];
    NSDictionary *query = [url parseQuery];
    XCTAssertEqualObjects(query, @{}, @"without query, returns empty Dict");

    url = [NSURL URLWithString:@"http://example.com?"];
    query = [url parseQuery];
    XCTAssertEqualObjects(query, @{}, @"without query, returns empty Dict");

}

- (void)testEmptyValue
{
    NSURL *url = [NSURL URLWithString:@"http://example.com?k=v&ihr="];
    NSDictionary *query = [url parseQuery];
    NSDictionary *expected = @{@"k": @"v", @"ihr": @""};
    XCTAssertEqualObjects(query, expected, @"empty value case");
}

- (void)testEmptyKey
{
    NSURL *url = [NSURL URLWithString:@"http://example.com?k=v&=ihr"];
    NSDictionary *query = [url parseQuery];
    NSDictionary *expected = @{@"k": @"v"};
    XCTAssertEqualObjects(query, expected, @"empty key is ignored");
}

- (void)testEmptyKeyAndValue
{
    NSURL *url = [NSURL URLWithString:@"http://example.com?k=v&="];
    NSDictionary *query = [url parseQuery];
    NSDictionary *expected = @{@"k": @"v"};
    XCTAssertEqualObjects(query, expected, @"empty key is ignored");
}

- (void)testTwoQuestionMark
{
    NSURL *url = [NSURL URLWithString:@"http://example.com?k=v?k2=v2"];
    NSDictionary *query = [url parseQuery];
    XCTAssertEqualObjects(query, @{}, @"when with two question marks, result be empty");
}

@end
