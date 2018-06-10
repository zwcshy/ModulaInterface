//
//  YCUserManager.m
//  TestProject
//
//  Created by 周文超 on 2018/5/17.
//  Copyright © 2018年 洋葱数学. All rights reserved.
//

#import "YCUserManager.h"
#import "YCUserManagerProtocal.h"
#import "YCUser.h"
#import <MJExtension.h>
#import <BeeHive.h>

@BeeHiveService(YCUserManagerProtocal, YCUserManager)

@interface YCUserManager() <YCUserManagerProtocal>

@property (nonatomic, strong) YCUser *studentUser;

@property (nonatomic, strong) NSDictionary *userDict;

@property (nonatomic, copy) NSString *token;

@end

@implementation YCUserManager

@synthesize  isStudent = _isStudent;

+ (BOOL)singleton {
    return YES;
}

static YCUserManager *_manager = nil;
+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _manager = [[YCUserManager alloc] init];
    });
    return _manager;
}

- (void)updateUserInfo:(NSDictionary *)userInfo {
    
    self.userDict = userInfo;
    
    YCUser *user = [YCUser mj_objectWithKeyValues:userInfo];
    self.studentUser = user;
    
    self.isStudent = YES;
}

- (void)updateUserToken:(NSString *)token {
    self.token = token;
}

- (NSString *)returnToken {
    return self.token;
}

- (NSDictionary *)retunUserInfo {
    return self.userDict;
}

- (id<YCUserProtocol>)returnUser {
    return (id)self.studentUser;
}

@end
