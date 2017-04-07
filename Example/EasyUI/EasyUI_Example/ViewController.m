//
//  ViewController.m
//  EasyUI
//
//  Created by 何霞雨 on 2017/4/5.
//  Copyright © 2017年 何霞雨. All rights reserved.
//

#import "ViewController.h"
#import "ConsultViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)doConsult:(id)sender {
    ConsultViewController *consultVC = [ConsultViewController instance];
    consultVC.loginInfo = [MTLoginInfo simpleLogin:@"gaofen" User:@"18200115355"];
    consultVC.loginInfo.doctor.name = @"高分";
    [self presentViewController:consultVC animated:YES completion:nil];
}

@end
