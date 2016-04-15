//
//  AppDelegate.m
//  Microblog
//
//  Created by 911 on 16/4/15.
//  Copyright © 2016年 bin. All rights reserved.
//

#import "AppDelegate.h"
#import "MBTabBarController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    self.window.rootViewController = [[MBTabBarController alloc]init];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}


@end
