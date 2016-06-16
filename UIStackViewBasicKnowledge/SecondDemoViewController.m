//
//  SecondDemoViewController.m
//  UIStackViewBasicKnowledge
//
//  Created by 宓珂璟 on 16/6/15.
//  Copyright © 2016年 宓珂璟. All rights reserved.
//

#import "SecondDemoViewController.h"
#import "MovieListsTableViewCell.h"
#import <UIImageView+WebCache.h>

@interface SecondDemoViewController () <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) NSMutableArray *imageArr;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

static NSString *identyfy = @"MovieListsTableViewCell";

@implementation SecondDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.title = @"MovieLists";
    [self.tableView registerNib:[UINib nibWithNibName:identyfy bundle:nil] forCellReuseIdentifier:identyfy];
    self.tableView.rowHeight = 110;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *movieDict = self.imageArr[indexPath.row];
    MovieListsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identyfy forIndexPath:indexPath];
    cell.movieImageView.image = [UIImage imageNamed:[movieDict objectForKey:@"image"]];
    
    cell.chineseName.text = [movieDict objectForKey:@"chineseName"];
    cell.englishName.text = [movieDict objectForKey:@"englishName"];
    [cell.likeButton setTitle:[NSString stringWithFormat:@"%@人喜欢",[movieDict objectForKey:@"likeNumber"]] forState:UIControlStateNormal];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSMutableArray *)imageArr
{
    if (_imageArr == nil) {
        _imageArr = [[NSMutableArray alloc] initWithArray:@[@{@"image":@"CQ`A{K6}~WZAEIQ3X7OCW4Y.jpg",@"chineseName":@"肖申克的救赎",@"englishName":@"The Shawshank Redemption",@"likeNumber":@"933148"},@{@"image":@"MSG40V4831$V3TG`Q0A84B5.jpg",@"chineseName":@"当幸福来敲门",@"englishName":@"The Pursuit of Happyness",@"likeNumber":@"615997"},@{@"image":@"$KKT1KU961N25ANBO{V%GAM.jpg",@"chineseName":@"教父",@"englishName":@"The Godfather",@"likeNumber":@"544148"},@{@"image":@"FE1P21U{PU1()88J_FI~1UQ.jpg",@"chineseName":@"龙猫",@"englishName":@"となりのトトロ",@"likeNumber":@"333148"},@{@"image":@"ZO62}T`9H~C]R~6}HX$V_4A.jpg",@"chineseName":@"忠犬八公的故事",@"englishName":@"Hachi: A Dog's Tale",@"likeNumber":@"666148"}]];
    }
    return _imageArr;
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
