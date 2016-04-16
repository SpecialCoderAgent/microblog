//
//  MBTabBarController.m
//  Microblog
//
//  Created by 911 on 16/4/15.
//  Copyright © 2016年 bin. All rights reserved.
//

#import "MBTabBarController.h"
#import "MBHomeNavigationController.h"
#import "MBMessageNavigationController.h"
#import "MBMineNavigationController.h"
#import "MBDicoveryNavigationController.h"

#import "MBHomeViewController.h"
#import "MBDiscoveryViewController.h"
#import "MBMessageViewController.h"
#import "MBMineViewController.h"
#import "MBLoginViewController.h"

@interface MBTabBarController ()<UITabBarDelegate>



@end

@implementation MBTabBarController

- (void)viewDidLoad{
    [super viewDidLoad];
    
   
    [self addAllChildViewController];
    
    self.tabBar.tintColor = [UIColor orangeColor];
    
    
}

- (void)viewDidAppear:(BOOL)animated {
    BOOL login = NO;
    
    if (!login) {
        MBLoginViewController *loginVC = [[MBLoginViewController alloc]init];
        [self presentViewController:loginVC animated:YES completion:^{
            
        }];
    }
}


- (void)addAllChildViewController{
    
    
    
    MBHomeViewController *homeVC = [[MBHomeViewController alloc]init];
    [self addChildViewController:[[MBHomeNavigationController alloc]initWithRootViewController:homeVC]];
    [self setItem:homeVC title:@"主页" image:[UIImage imageWithRender:@"tabbar_home"] selImage:[UIImage imageWithRender:@"tabbar_home_selected"]];
    
    MBMessageViewController *messageVC = [[MBMessageViewController alloc]init];
    [self addChildViewController:[[MBMessageNavigationController alloc]initWithRootViewController:messageVC]];
    [self setItem:messageVC title:@"消息" image:[UIImage imageWithRender:@"tabbar_message_center"] selImage:[UIImage imageWithRender:@"tabbar_message_center_selected"]];
    
    MBDiscoveryViewController *discoveryVC = [[MBDiscoveryViewController alloc]init];
    [self addChildViewController:[[MBDicoveryNavigationController alloc]initWithRootViewController:discoveryVC]];
    [self setItem:discoveryVC title:@"发现" image:[UIImage imageWithRender:@"tabbar_discover"] selImage:[UIImage imageWithRender:@"tabbar_discover_selected"]];
    
    MBMineViewController *mineVC = [[MBMineViewController alloc]init];
    [self addChildViewController:[[MBMineNavigationController alloc]initWithRootViewController:mineVC]];
    [self setItem:mineVC title:@"我" image:[UIImage imageWithRender:@"tabbar_profile"] selImage:[UIImage imageWithRender:@"tabbar_profile_selected"]];
    

}


- (void)setItem:(UIViewController *)vc title:(NSString *)title image:(UIImage *)image selImage:(UIImage *)selImage
{
    
    vc.title = title;
    vc.tabBarItem.image = image;
    vc.tabBarItem.selectedImage = selImage;
    
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
    NSLog(@"%s,%@",__func__,item.title);
    
}


@end
