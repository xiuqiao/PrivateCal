//
//  LBBRootViewController2.h
//  LBBApp
//
//  Created by mac on 14-9-26.
//  Copyright (c) 2014年 王渊浩. All rights reserved.
//

#import "LBBRootViewController.h"
//导航条上带有返回按钮
@interface LBBRootViewController2 : LBBRootViewController

//让后边继承者可以重写此方法
- (void)backItemClick:(UIButton *)button;

@end
