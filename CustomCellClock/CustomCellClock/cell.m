//
//  cell.m
//  CustomCellClock
//
//  Created by 董渊 on 2019/7/1.
//  Copyright © 2019 董渊. All rights reserved.
//

#import "cell.h"

@implementation cell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self)
    {
        self.label=[[UILabel alloc]init];
        self.switchOfClock=[[UISwitch alloc]init];
        self.labelOfTime=[[UILabel alloc]init];
        self.labelOfClock=[[UILabel alloc]init];
        [self.contentView addSubview:_label];
        [self.contentView addSubview:_switchOfClock];
        [self.contentView addSubview:_labelOfTime];
        [self.contentView addSubview:_labelOfClock];
    }
    return self;
}
-(void)layoutSubviews{
    [super layoutSubviews];
    _label.frame=CGRectMake(20, 20, 50, 30);
    _switchOfClock.frame=CGRectMake(300, 30, 50, 30);
    _labelOfClock.frame=CGRectMake(20, 50, 40, 20);
    _labelOfTime.frame=CGRectMake(80, 20, 100, 50);
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
