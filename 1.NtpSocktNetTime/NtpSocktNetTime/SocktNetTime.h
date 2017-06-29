//
//  SocktNetTime.h
//  SocktNetTime
//
//  Created by taiping on 2017/6/15.
//  Copyright © 2017年 taiping. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ios-ntp.h"

@interface SocktNetTime : NSObject{

    NetworkClock *    netClock;           // complex clock

}

@property (nonatomic,strong) NetworkClock * netClock;

+ (SocktNetTime *)sharedSocktnetInstance;
- (NSDate *) startSynchTime;


@end
