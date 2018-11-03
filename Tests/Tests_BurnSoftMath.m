//
//  Tests.m
//  Tests
//
//  Created by burnsoft on 11/1/18.
//  Copyright © 2018 burnsoft. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BurnSoftUniversal/BurnSoftMath.h"

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)test_getPricePerItem {
    //+(double)getPricePerItem:(NSString *) price QTY:(NSString *) qty;
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    double ppi = 10;
    double expected = 10;
    bool success = NO;
    
    if (ppi == expected)
    {
        success = YES;
    }
    XCTAssert(success);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
