//
//  RootViewController.m
//  RelationCaculate
//
//  Created by mac on 2019/3/31.
//  Copyright © 2019 mac. All rights reserved.
//

#import "RootViewController.h"
#import "LBBPhotoListVC.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    NSLog(@"fafda");
    UIButton *Btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    Btn.center = self.view.center;
    [Btn addTarget:self action:@selector(nextPage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Btn];
    

}


- (void)nextPage{
    LBBPhotoListVC *vc = [[LBBPhotoListVC alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
    
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
