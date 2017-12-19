//
//  MVCDemoViewController.m
//  iOSDesignPattern
//
//  Created by Darsky on 2017/12/19.
//  Copyright © 2017年 Darsky. All rights reserved.
//

#import "MVCDemoViewController.h"
#import "GoodsModel.h"
#import "GoodsListCell.h"

@interface MVCDemoViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    __weak IBOutlet UITableView *_listTableView;
    
    NSMutableArray              *_dataArray;
}

@end

@implementation MVCDemoViewController

static NSString *GoodsListCellIdentifier    = @"GoodsListCell";


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [_listTableView registerNib:[UINib nibWithNibName:GoodsListCellIdentifier
                                               bundle:[NSBundle mainBundle]]
         forCellReuseIdentifier:GoodsListCellIdentifier];
    
    [self startLoadData];
    
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    GoodsListCell *cell = [tableView dequeueReusableCellWithIdentifier:GoodsListCellIdentifier];
    
    [cell setupDisplayGoodsInfoWithModel:_dataArray[indexPath.row]];
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath
                             animated:YES];
}


#pragma mark - 数据处理

- (void)startLoadData
{
    NSMutableArray *dataArray = [NSMutableArray array];
    NSDictionary *dic = @{@"goodsName":@"RX-78 GUNDAM",
                          @"goodsDesc":@"HG 1/144 RX-78 GUNDAM",
                          @"goodsPic":@"Goods"};
    for ( int x = 0; x<10; x++)
    {
        GoodsModel *model = [GoodsModel goodsModelWithDict:dic];
        [dataArray addObject:model];
    }
    _dataArray = dataArray;
    
    [_listTableView reloadData];
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
