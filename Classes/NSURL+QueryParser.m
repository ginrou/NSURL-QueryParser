//
//  NSURL+QueryParser.m
//  NSURL+QueryParser
//
//  Created by 武田 祐一 on 2014/02/28.
//  Copyright (c) 2014年 Yuichi Takeda. All rights reserved.
//

#import "NSURL+QueryParser.h"

@implementation NSURL (QueryParser)
- (NSDictionary *)parseQuery {

    NSMutableDictionary *queryDict = [NSMutableDictionary dictionary];
    NSArray *keyValuePairs = [self.query componentsSeparatedByString:@"&"];

    for (NSString *keyValuePair in keyValuePairs) {
        NSArray *element = [keyValuePair componentsSeparatedByString:@"="];

        if (element.count == 2) {
            queryDict[element[0]] = element[1];
        }

    }

    return [NSDictionary dictionaryWithDictionary:queryDict];
}
@end
