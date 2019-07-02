//
//  ViewController.m
//  CustomCellClock
//
//  Created by 董渊 on 2019/7/1.
//  Copyright © 2019 董渊. All rights reserved.
//

#import "ViewController.h"
#import "cell.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"发现";
    self.view.backgroundColor=[UIColor blackColor];
    UITableView* tableView=[[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    tableView.delegate=self;
    tableView.dataSource=self;
    tableView.tableHeaderView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 10, 0.1)];
    [self.view addSubview:tableView];
    // Do any additional setup after loading the view.
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString * cellid=@"cell";
    cell * clk=nil;
    clk=[tableView dequeueReusableCellWithIdentifier:cellid];
    if(clk==nil)
    {
        clk=[[cell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
    }
    NSString * string1=[[NSString alloc]initWithFormat:@"%02d:%02d",arc4random()%13,arc4random()%60];
    clk.labelOfTime.text=string1;
    clk.labelOfTime.font=[UIFont systemFontOfSize:35];
    clk.backgroundColor=[UIColor blackColor];
//    clk.switchOfClock.isHidden=FALSE;
    clk.labelOfClock.text=@"闹钟";
    if(arc4random()%2)
        clk.label.text=@"上午";
    else
        clk.label.text=@"下午";
    clk.label.textColor=[UIColor whiteColor];
    clk.labelOfClock.textColor=[UIColor whiteColor];
    clk.labelOfTime.textColor=[UIColor whiteColor];
    return clk;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 90;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView selectRowAtIndexPath:nil animated:YES scrollPosition:nil];
}
@end
