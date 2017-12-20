//
//  GoodsViewModel.m
//  iOSDesignPattern
//
//  Created by Darsky on 2017/12/20.
//  Copyright © 2017年 Darsky. All rights reserved.
//

#import "GoodsViewModel.h"
#import "GoodsModel.h"


@implementation GoodsViewModel



- (void)setBlockWithReturnBlock: (ResponeDataBlock) responeBlock
                 WithErrorBlock: (ErrorBlock) errorBlock
{
    _responeBlock = responeBlock;
    _errorBlock   = errorBlock;
}

- (void)viewModelLoadData
{
    NSMutableArray *resultArray = [NSMutableArray array];
    NSDictionary *dic = @{@"goodsName":@"RX-78 GUNDAM",
                          @"goodsDesc":@"HG 1/144 RX-78 GUNDAM",
                          @"goodsPic":@"Goods"};
    for ( int x = 0; x<10; x++)
    {
        GoodsModel *model = [GoodsModel goodsModelWithDict:dic];
        [resultArray addObject:model];
    }
    
    self.responeBlock(resultArray);
}

@end
