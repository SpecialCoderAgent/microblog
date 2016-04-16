//
//  MBLoginViewController.m
//  Microblog
//
//  Created by 911 on 16/4/15.
//  Copyright © 2016年 bin. All rights reserved.
//

#import "MBLoginViewController.h"

@interface MBLoginViewController ()<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *accountTF;
@property (weak, nonatomic) IBOutlet UITextField *passwordTF;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@property (weak, nonatomic) IBOutlet UIImageView *loginUserImage;
@property (weak, nonatomic) IBOutlet UIImageView *loginKeyImage;



@end

@implementation MBLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loginBtn.enabled = NO;
    self.accountTF.delegate = self;
    self.passwordTF.delegate = self;
}


//登陆按钮点击
- (IBAction)loginBtnClick:(UIButton *)sender {
    
}

- (IBAction)textChange:(UITextField *)sender {
    
    
    self.loginUserImage.highlighted = self.accountTF.text;
    
    self.loginKeyImage.highlighted = self.passwordTF.text;
    
    
    self.loginBtn.enabled = self.accountTF.text && self.passwordTF.text;
}



#pragma mark -------
#pragma mark textfiled代理方法
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    //正则
    
    return YES;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    //退键盘
    [self.view endEditing:YES];
}

@end
