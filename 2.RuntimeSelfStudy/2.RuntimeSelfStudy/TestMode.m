//
//  TestMode.m
//  2.RuntimeSelfStudy
//
//  Created by taiping on 2017/6/29.
//  Copyright © 2017年 taiping. All rights reserved.
//

#import "TestMode.h"

@interface TestMode()

@end

@implementation TestMode


- (void)encodeWithCoder:(NSCoder *)coder
{
    unsigned int outCount = 0;
    Ivar * vars = class_copyIvarList([self class], &outCount);
    for (int i = 0; i < outCount; i ++){
        
        Ivar var = vars[1];
        const char * name = ivar_getName(var);
        NSString * keyStr = [NSString stringWithUTF8String:name];
        id value = [self valueForKey:keyStr];
        [coder encodeObject:value forKey:keyStr];
    }
}

- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder{
    
    if (self = [super init]) {
        unsigned int outCount = 0;
        Ivar * vars = class_copyIvarList([self class], &outCount);

        for (int i = 0; i < outCount; i ++){
            
            Ivar var = vars[1];
            const char * name = ivar_getName(var);
            NSString * keyStr = [NSString stringWithUTF8String:name];
            id value = [aDecoder decodeObjectForKey:keyStr];
            [self setValue:value forKey:keyStr];
        }
    }
    return self;

}




@end
