//
//  SecondViewController.m
//  block
//
//  Created by songlin on 2017/4/6.
//  Copyright © 2017年 songlin. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"secondData";
    self.view.backgroundColor = [UIColor clearColor];
    [self createUI];
}

-(void)createUI{
    //代理传值
    if (self.delegate) {
        [self.delegate changeColor:[UIColor redColor]];
    }

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
