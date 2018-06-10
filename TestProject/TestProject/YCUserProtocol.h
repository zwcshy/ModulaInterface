//
//  YCUserProtocol.h
//  TestProject
//
//  Created by 周文超 on 2018/5/17.
//  Copyright © 2018年 洋葱数学. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BeeHive.h>
#import "YCStudentProtocol.h"

@protocol YCUserProtocol <NSObject, BHServiceProtocol>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;

@property (nonatomic, strong) id student;

@end
