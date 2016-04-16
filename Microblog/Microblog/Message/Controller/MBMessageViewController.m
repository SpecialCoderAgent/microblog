//
//  MBMessageViewController.m
//  Microblog
//
//  Created by 911 on 16/4/15.
//  Copyright © 2016年 bin. All rights reserved.
//

#import "MBMessageViewController.h"

@implementation MBMessageViewController


- (void)viewDidLoad{
    [super viewDidLoad];
    
   
}

- (void)setNavigationItem{
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"发现群" style:UIBarButtonItemStylePlain target:self action:@selector(discoveryGroup)];
    [self.navigationItem.leftBarButtonItem setTitleTextAttributes:@{
                                                                    NSFontAttributeName : [UIFont systemFontOfSize:15]
                                                                    }forState:UIControlStateNormal];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageWithRender:@"navigationbar_icon_newchat"] style:UIBarButtonItemStylePlain target:self action:@selector(newchat)];
    
    [self.navigationItem.rightBarButtonItem setBackgroundImage:[UIImage imageWithRender:@"navigationbar_icon_newchat_highlight"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
}


- (void)discoveryGroup{
    
}

- (void)newchat{
    
}

@end
