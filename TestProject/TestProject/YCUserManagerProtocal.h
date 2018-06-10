//
//  YCUserManagerProtocal.h
//  TestProject
//
//  Created by 周文超 on 2018/5/17.
//  Copyright © 2018年 洋葱数学. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BeeHive.h>
#import "YCUserProtocol.h"

@protocol YCUserManagerProtocal <NSObject, BHServiceProtocol>

@property (nonatomic, assign) BOOL isStudent;

- (NSDictionary *)retunUserInfo;

/**
 用户token
 
 @return token
 */
- (NSString *)returnToken;

// 更新
- (void)updateUserInfo:(NSDictionary *)userInfo;

/**
 用户token
 
 @param token token
 */
- (void)updateUserToken:(NSString *)token;

- (id<YCUserProtocol>)returnUser;

@end
