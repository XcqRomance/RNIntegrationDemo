//
//  ViewController.m
//  RNIntegrationDemo
//
//  Created by 谢传权 on 2018/1/18.
//  Copyright © 2018年 romance. All rights reserved.
//

#import "ViewController.h"
#import "RNIntegrationDemo-Swift.h"

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
  
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


@end
