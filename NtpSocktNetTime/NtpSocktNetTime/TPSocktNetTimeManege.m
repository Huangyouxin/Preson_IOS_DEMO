//
//  TPSocktNetTimeManege.m
//  CNTaipingAgent
//
//  Created by taiping on 2017/6/16.
//  Copyright © 2017年 Taiping. All rights reserved.
//

#import "TPSocktNetTimeManege.h"

@implementation TPSocktNetTimeManege
    


static TPSocktNetTimeManege * socktNetTimeInstance = nil;

+ (TPSocktNetTimeManege *)instance
{
    
    @synchronized(self) {
        
        if (nil == socktNetTimeInstance) {
            
            socktNetTimeInstance = [[TPSocktNetTimeManege alloc] init];
        }
    }
    
    return socktNetTimeInstance;
}

- (id) init
{
    if (self = [super init]) {
        
        network = [NetworkClock sharedNetworkClock];
    }
    
    return self;
}

- (NSDate *) startSynchTime{
    
    return network.networkTime;
}

@end
