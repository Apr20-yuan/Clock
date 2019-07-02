//
//  cell.h
//  CustomCellClock
//
//  Created by 董渊 on 2019/7/1.
//  Copyright © 2019 董渊. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface cell : UITableViewCell
@property (nonatomic,strong) UISwitch *switchOfClock;
@property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *labelOfTime;
@property (nonatomic,strong) UILabel *labelOfClock;
@end

NS_ASSUME_NONNULL_END
