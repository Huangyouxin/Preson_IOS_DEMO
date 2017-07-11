//
//  SocktNetTime.m
//  SocktNetTime
//
//  Created by taiping on 2017/6/15.
//  Copyright © 2017年 taiping. All rights reserved.
//

#import "SocktNetTime.h"


@interface SocktNetTime ()
    
@end

@implementation SocktNetTime

static SocktNetTime * socktNetTimeInstance = nil;


+ (SocktNetTime *)sharedSocktnetInstance
{
    
    @synchronized(self) {
        
        if (nil == socktNetTimeInstance) {
            
            socktNetTimeInstance = [[SocktNetTime alloc] init];
        }
    }
    
    return socktNetTimeInstance;
}

- (id) init
{
    if (self = [super init]) {
        
        netClock = [NetworkClock sharedNetworkClock];
    }
    
    return self;
}

- (NSDate *) startSynchTime{
    
    return netClock.networkTime;
}

@end
