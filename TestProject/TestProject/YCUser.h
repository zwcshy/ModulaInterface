//
//  YCUser.h
//  TestProject
//
//  Created by 周文超 on 2018/5/16.
//  Copyright © 2018年 洋葱数学. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YCStudentProtocol.h"

@interface YCUser : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;

@property (nonatomic, strong) id<YCStudentProtocol> student;

@end
