//
//  GoodModel.m
//  iOSDesignPattern
//
//  Created by Darsky on 2017/12/19.
//  Copyright © 2017年 Darsky. All rights reserved.
//

#import "GoodsModel.h"

@implementation GoodsModel

+ (instancetype)goodsModelWithDict:(NSDictionary*)dic
{
    GoodsModel *book = [[self alloc] init];
    [book setValuesForKeysWithDictionary:dic];
    return book;
}
@end
