//
//  LBBHeaderCollectionReusableView.m
//  JLPhotoBrowser
//
//  Created by apple on 17/4/21.
//  Copyright © 2017年 BangGu. All rights reserved.
//

#import "LBBHeaderCollectionReusableView.h"

@implementation LBBHeaderCollectionReusableView

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    [_deletePhotoButton setTitle:@"确定" forState:UIControlStateSelected];
    [_deletePhotoButton setTitle:@"删除" forState:UIControlStateNormal];
    
}

@end
