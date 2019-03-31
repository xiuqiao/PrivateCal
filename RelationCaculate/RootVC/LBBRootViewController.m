//
//  LBBRootViewController.m
//  LBBApp
//
//  Created by mac on 14-9-22.
//  Copyright (c) 2014年 王渊浩. All rights reserved.
//

#import "LBBRootViewController.h"
@interface LBBRootViewController ()

@end

@implementation LBBRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"navBg.png"] forBarMetrics:UIBarMetricsDefault];
    
    self.navigationController.navigationBar.titleTextAttributes = @{UITextAttributeTextColor:[UIColor whiteColor],UITextAttributeFont:[UIFont boldSystemFontOfSize:17]};
    
    self.tabBarController.tabBar.hidden = NO;
    self.navigationController.navigationBar.translucent = NO;
    
}
 
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    //开启iOS7的滑动返回效果
    if ([[UIDevice currentDevice].systemVersion floatValue] >= 7.0) {
        self.navigationController.interactivePopGestureRecognizer.delegate = nil;
        self.navigationController.interactivePopGestureRecognizer.enabled = NO;
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
