//
//  BViewController.m
//  PushWithTab
//
//  Created by soyoung on 16/1/27.
//  Copyright © 2016年 AlenW. All rights reserved.
//

#import "BViewController.h"
#import "CViewController.h"

@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)pushC:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
    self.tabBarController.selectedIndex=0;
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(.25 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        CViewController *view=[[CViewController alloc]init];
        [self.tabBarController.selectedViewController pushViewController:view animated:YES];
//    });
    
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

@end
