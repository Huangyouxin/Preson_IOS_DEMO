//
//  ViewController.m
//  2.RuntimeSelfStudy
//
//  Created by taiping on 2017/6/29.
//  Copyright © 2017年 taiping. All rights reserved.
//

#import "ViewController.h"
#import "TestMode.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self modeingCoder];
    
    [self getCoping];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark ========== 归档 ==========
- (void) modeingCoder{
    
    TestMode * mode = [[TestMode alloc]init];
    mode.YorN = NO;
    mode.cmptStr = @"str";
    mode.number = @(1);
    
    NSData * data = [NSKeyedArchiver archivedDataWithRootObject:mode ];
    [[NSUserDefaults standardUserDefaults] setObject:data forKey:@"coding"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void) getCoping{
    
    
   NSData * data = [[NSUserDefaults standardUserDefaults] objectForKey:@"coding"];
    TestMode * mde = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    NSLog(@"======%@", mde.cmptStr );
}

#pragma mark ========== 字典模型互转 ==========
- (void) dicChangeModeing{
    
    
}


@end
