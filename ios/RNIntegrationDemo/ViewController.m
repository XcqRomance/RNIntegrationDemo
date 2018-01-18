//
//  ViewController.m
//  RNIntegrationDemo
//
//  Created by 谢传权 on 2018/1/18.
//  Copyright © 2018年 romance. All rights reserved.
//

#import "ViewController.h"
#import "RNIntegrationDemo-Swift.h"
#import <React/RCTRootView.h>
#import <React/RCTBundleURLProvider.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)pushNativeScreen:(UIButton *)sender {
  SwiftTestViewController *testVC = [[SwiftTestViewController alloc] init];
  testVC.view.backgroundColor = [UIColor redColor];
  [self.navigationController pushViewController:testVC animated:true];
}

- (IBAction)pushRNScreen:(UIButton *)sender {
  // 手机和电脑链接同一个wifi的wifi IP地址，才能在真机运行，同时模拟器也能运行
  NSURL *jsCodeLocation = [NSURL URLWithString:@"http://192.168.6.149:8081/index.bundle?platform=ios&dev=true"];
//  NSURL *jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
  RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL : jsCodeLocation
                       moduleName        : @"RNIntegrationDemo"
                       initialProperties : @{ @"scores" : @[
                                                 @{
                                                   @"name" : @"Alex",
                                                   @"value": @"42"
                                                   },
                                                 @{
                                                   @"name" : @"Joel",
                                                   @"value": @"10"
                                                   }
                                                 ]
                                             }
                        launchOptions : nil];
  UIViewController *vc = [[UIViewController alloc] init];
  vc.view = rootView;
  vc.view.backgroundColor = [UIColor yellowColor];
  [self.navigationController pushViewController:vc animated:true];
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


@end
