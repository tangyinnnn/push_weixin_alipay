//
//  ViewController.m
//  跳到微信
//
//  Created by 1 on 2017/5/3.
//  Copyright © 2017年 1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    
    UIButton *button = [[UIButton alloc]init];
    button.backgroundColor = [UIColor grayColor];
    [button setTitle:@"支付宝付款" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    button.tag = 100;
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.frame = CGRectMake((self.view.frame.size.width/2)-75, 150, 150, 55);
    [self.view addSubview:button];
    button.layer.cornerRadius = 10;
    button.layer.masksToBounds = YES;
    
    UIButton *button1 = [[UIButton alloc]init];
    button1.backgroundColor = [UIColor grayColor];
    [button1 setTitle:@"支付宝扫一扫" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button1.tag = 101;
    button1.layer.cornerRadius = 10;
    button1.layer.masksToBounds = YES;
    button1.frame = CGRectMake((self.view.frame.size.width/2)-75, 250, 150, 55);
    [self.view addSubview:button1];
    
    UIButton *button2 = [[UIButton alloc]init];
    button2.backgroundColor = [UIColor grayColor];
    [button2 setTitle:@"微信扫一扫" forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    button2.tag = 102;
    button2.layer.cornerRadius = 10;
    button2.layer.masksToBounds = YES;
    button2.frame = CGRectMake((self.view.frame.size.width/2)-75, 350, 150, 55);
    [self.view addSubview:button2];
    
    
}

-(void)onClick:(UIButton *)button
{
    if (button.tag == 100) {
        NSURL * url = [NSURL URLWithString:@"alipayqr://platformapi/startapp?saId=20000056"];
      //  [[UIApplication sharedApplication] openURL:url];
        
        [[UIApplication sharedApplication]openURL:url];
        
    }
    if (button.tag ==101) {
        NSURL * url = [NSURL URLWithString:@"alipayqr://platformapi/startapp?saId=10000007"];
        [[UIApplication sharedApplication] openURL:url];
    }
    if (button.tag == 102) {
        NSURL * url = [NSURL URLWithString:@"weixin://scanqrcode"];
        [[UIApplication sharedApplication] openURL:url];
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
