//
//  FirstDemoViewController.m
//  UIStackViewBasicKnowledge
//
//  Created by 宓珂璟 on 16/6/15.
//  Copyright © 2016年 宓珂璟. All rights reserved.
//

#import "FirstDemoViewController.h"

@interface FirstDemoViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@property (weak, nonatomic) IBOutlet UIImageView *imageView3;
@property (nonatomic,assign) BOOL isLarge;
@property (weak, nonatomic) IBOutlet UILabel *desLabel;
@property (weak, nonatomic) IBOutlet UIButton *middleButton;
@end
@implementation FirstDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"Command + →或者点图片有动画";
    for (NSInteger i = 0; i < 3 ; i ++)
    {
        UIImageView *imageView = [self valueForKey:[NSString stringWithFormat:@"imageView%zd",i + 1]];
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickImageView:)];
        imageView.userInteractionEnabled = YES;
        [imageView addGestureRecognizer:tap];
    }
}
- (IBAction)clickCancel:(UIButton *)sender
{
    long long tag = sender.tag;
    switch (tag) {
        case 555:
            if (self.desLabel.hidden) {
                [UIView animateWithDuration:0.5 animations:^{
                    
                    self.desLabel.hidden = NO;
                    self.middleButton.hidden = NO;
                    
                }];
            }
            break;
        case 666:
            if (!self.desLabel.hidden) {
                [UIView animateWithDuration:0.5 animations:^{
                    
                    self.desLabel.hidden = YES;
                    self.middleButton.hidden =YES;
                    
                }];
            }
            break;
            
        default:
            break;
    }
}

- (void)clickImageView:(UITapGestureRecognizer *)tap
{
    long long tag = tap.view.tag;
    self.isLarge = !self.isLarge;
    switch (tag) {
        case 1000:
            if (!self.isLarge)
            {
                [UIView animateWithDuration:0.5 animations:^{
                   
                    self.imageView2.hidden = NO;
                    self.imageView3.hidden = NO;
                }];
            }
            else
            {
                [UIView animateWithDuration:0.5 animations:^{
                    
                    self.imageView2.hidden = YES;
                    self.imageView3.hidden = YES;
                }];
            }
            
            break;
        case 1001:
            if (!self.isLarge)
            {
                [UIView animateWithDuration:0.5 animations:^{
                    
                    self.imageView1.hidden = NO;
                    self.imageView3.hidden = NO;
                }];
            }
            else
            {
                [UIView animateWithDuration:0.5 animations:^{
                    
                    self.imageView1.hidden = YES;
                    self.imageView3.hidden = YES;
                }];
            }
            
            break;
        case 1002:
            if (!self.isLarge)
            {
                [UIView animateWithDuration:0.5 animations:^{
                    
                    self.imageView2.hidden = NO;
                    self.imageView1.hidden = NO;
                }];
            }
            else
            {
                [UIView animateWithDuration:0.5 animations:^{
                    
                    self.imageView2.hidden = YES;
                    self.imageView1.hidden = YES;
                }];
            }
            
            break;
            
        default:
            break;
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
