//
//  TPSocktNetTimeManege.h
//  CNTaipingAgent
//
//  Created by taiping on 2017/6/16.
//  Copyright © 2017年 Taiping. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ios-ntp.h"

@interface TPSocktNetTimeManege : NSObject{
    
    NetworkClock * network;

}

@property (nonatomic,strong) NetworkClock * network;

+ (TPSocktNetTimeManege *)instance;
- (NSDate *) startSynchTime;

@end
