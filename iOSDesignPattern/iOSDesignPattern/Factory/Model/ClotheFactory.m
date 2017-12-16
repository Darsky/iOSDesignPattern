//
//  ClotheFactory.m
//  iOSDesignPattern
//
//  Created by Darsky on 2017/12/16.
//  Copyright © 2017年 Darsky. All rights reserved.
//

#import "ClotheFactory.h"


@implementation ClotheFactory

+ (Clothe*)produceProduct
{
    Clothe *clothe = [[Clothe alloc] init];
    clothe.productName = @"衣物";
    return clothe;
}

+ (Shirt*)produceShirtProduct
{
    Shirt *shirt = [[Shirt alloc] init];
    shirt.productName = @"总厂-衬衣";
    return shirt;
}

+ (Tshirt*)produceTshirtProduct
{
    Tshirt *tshirt = [[Tshirt alloc] init];
    tshirt.productName = @"总厂-t恤";
    return tshirt;
}

@end
