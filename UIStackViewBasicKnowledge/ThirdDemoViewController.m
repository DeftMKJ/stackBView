//
//  ThirdDemoViewController.m
//  UIStackViewBasicKnowledge
//
//  Created by 宓珂璟 on 16/6/16.
//  Copyright © 2016年 宓珂璟. All rights reserved.
//

#import "ThirdDemoViewController.h"

@interface ThirdDemoViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *image1;
@property (weak, nonatomic) IBOutlet UIImageView *image2;
@property (weak, nonatomic) IBOutlet UIImageView *image3;
@property (weak, nonatomic) IBOutlet UIImageView *image4;
@property (weak, nonatomic) IBOutlet UIImageView *image5;
@property (nonatomic,assign) NSInteger starCount;

@end

@implementation ThirdDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"评分界面";
    self.image1.hidden = YES;
    self.image2.hidden = YES;
    self.image3.hidden = YES;
    self.image4.hidden = YES;
    self.image5.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)removeStar:(id)sender
{
    if (self.starCount == 0) {
        return;
    }
    switch (self.starCount) {
        case 1:
            self.image1.hidden = YES;
            self.starCount = 0;
            break;
        case 2:
            self.image2.hidden = YES;
            self.starCount = 1;
            break;
        case 3:
            self.image3.hidden = YES;
            self.starCount = 2;
            break;
        case 4:
            self.image4.hidden = YES;
            self.starCount = 3;
            break;
        case 5:
            self.image5.hidden = YES;
            self.starCount = 4;
            break;
            
        default:
            break;
    }
    
}
- (IBAction)addStar:(id)sender
{
    if (self.starCount == 5) {
        return;
    }
    switch (self.starCount) {
        case 0:
            self.image1.hidden = NO;
            self.starCount = 1;
            break;
        case 1:
            self.image2.hidden = NO;
            self.starCount = 2;
            break;
        case 2:
            self.image3.hidden = NO;
            self.starCount = 3;
            break;
        case 3:
            self.image4.hidden = NO;
            self.starCount = 4;
            break;
        case 4:
            self.image5.hidden = NO;
            self.starCount = 5;
            break;
            
        default:
            break;
    }
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
