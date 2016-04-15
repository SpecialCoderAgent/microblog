//
//  UIImage+Render.m
//  Microblog
//
//  Created by 911 on 16/4/15.
//  Copyright © 2016年 bin. All rights reserved.
//

#import "UIImage+Render.h"

@implementation UIImage (Render)

+ (UIImage *)imageWithRender:(NSString *)name{
    UIImage *image = [self imageNamed:name];
    
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
}


@end
