//
//  LBBRootViewController2.m
//  LBBApp
//
//  Created by mac on 14-9-26.
//  Copyright (c) 2014年 王渊浩. All rights reserved.
//

#import "LBBRootViewController2.h"

@interface LBBRootViewController2 ()

@end

@implementation LBBRootViewController2

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"";
        
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(-10, 10, 22, 37);
    [button setImage:[UIImage imageNamed:@"arrow_03.png"] forState:UIControlStateNormal];
    button.imageEdgeInsets = UIEdgeInsetsMake(9,3,9,9);//设置image在button上的位置，（上top，左left，下bottom，右right）这里可以写负值
    [button addTarget:self action:@selector(backItemClick:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:button];
    
    
}
- (void)backItemClick:(UIButton *)button{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"topBg_03.png"] forBarMetrics:UIBarMetricsDefault];
    self.tabBarController.tabBar.hidden = YES;
    
//    if([DMDevceManager isiOS7]){
//    self.tabBarController.tabBar.hidden = YES;
//    }else{
//        self.tabBarController.tabBar.hidden = NO;
//
//    }
    
    //self.tabBarController.tabBar.userInteractionEnabled = NO;
    //self.tabBarController.view.userInteractionEnabled = NO;
   // self.view.backgroundColor = [UIColor whiteColor];
    // self.view.backgroundColor = [UIColor whiteColor];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    //第二层页面跳出时显示tabbar
    self.tabBarController.tabBar.hidden = NO;
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    //代理置空，否则会闪退
    if ([self.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]){
        self.navigationController.interactivePopGestureRecognizer.delegate = nil;
        self.navigationController.interactivePopGestureRecognizer.enabled = NO;
        
        
    }
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    //开启iOS7的滑动返回效果
    if ([self.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        //只有在二级页面生效
        if ([self.navigationController.viewControllers count] >= 2) {
            self.navigationController.interactivePopGestureRecognizer.delegate = (id)self;
            
            self.navigationController.interactivePopGestureRecognizer.enabled = YES;
        }
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
