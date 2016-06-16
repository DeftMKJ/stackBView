//
//  MovieListsTableViewCell.h
//  UIStackViewBasicKnowledge
//
//  Created by 宓珂璟 on 16/6/15.
//  Copyright © 2016年 宓珂璟. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieListsTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *movieImageView;
@property (weak, nonatomic) IBOutlet UILabel *chineseName;
@property (weak, nonatomic) IBOutlet UILabel *englishName;
@property (weak, nonatomic) IBOutlet UIButton *likeButton;

@end
