//
//  ViewController.m
//  TestProject
//
//  Created by 周文超 on 2018/5/16.
//  Copyright © 2018年 洋葱数学. All rights reserved.
//

#import "ViewController.h"
#import <BeeHive.h>
#import <ReactiveCocoa.h>
#import "YCUserProtocol.h"
#import "YCUserManagerProtocal.h"
#import <MJExtension.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *dict = @{
                           @"name":@"周文超",
                           @"age":@(12),
                           @"student" : @{
                                   @"studentName" : @"李向红",
                                   @"studentAge" : @(11)
                                   }
                           };
    
    id<YCUserManagerProtocal> userManager = [[BeeHive shareInstance] createService:@protocol(YCUserManagerProtocal)];
    
    // 更新数据
    [userManager updateUserInfo:dict];
    
    [RACObserve(userManager, isStudent) subscribeNext:^(id x) {
        
    }];
    
    // 获取用户信息
    id<YCUserProtocol> user = [userManager returnUser];
    
    [userManager updateUserToken:@"我是token"];
    
    NSLog(@"%@----%@-----%@", user.name, [userManager returnToken], [user.student mj_JSONString]);
    
    [RACObserve(user, name) subscribeNext:^(id  _Nullable x) {

    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
