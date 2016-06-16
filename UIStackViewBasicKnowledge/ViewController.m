//
//  ViewController.m
//  UIStackViewBasicKnowledge
//
//  Created by 宓珂璟 on 16/6/15.
//  Copyright © 2016年 宓珂璟. All rights reserved.
//

#import "ViewController.h"
#import "FirstDemoViewController.h"
#import "SecondDemoViewController.h"
#import "ThirdDemoViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"UIStackViewDemoText";
}
- (IBAction)showDemo:(UIButton *)sender {
    if (sender.tag == 100)
    {
        // 示例1
        FirstDemoViewController *firstDemo = [[FirstDemoViewController alloc]init];
        [self.navigationController pushViewController:firstDemo animated:YES];
        
    }
    else if (sender.tag == 101)
    {
        // 示例2
        SecondDemoViewController *secondDemo = [[SecondDemoViewController alloc]init];
        [self.navigationController pushViewController:secondDemo animated:YES];
        
    }
    else if (sender.tag == 102)
    {
        // 示例3
        ThirdDemoViewController *thirdDemo = [[ThirdDemoViewController alloc]init];
        [self.navigationController pushViewController:thirdDemo animated:YES];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
