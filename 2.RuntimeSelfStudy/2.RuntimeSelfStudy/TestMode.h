//
//  TestMode.h
//  2.RuntimeSelfStudy
//
//  Created by taiping on 2017/6/29.
//  Copyright © 2017年 taiping. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface TestMode : NSObject <NSCoding>

@property (nonatomic, copy) NSString * cmptStr;
@property (nonatomic, assign) BOOL YorN;
@property (nonatomic, strong) NSNumber * number;


@end
