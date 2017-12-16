//
//  ClotheFactory.m
//  iOSDesignPattern
//
//  Created by Darsky on 2017/12/16.
//  Copyright © 2017年 Darsky. All rights reserved.
//

#import "ClotheFactory.h"
#import "Clothe.h"


@implementation ClotheFactory

+ (Clothe*)produceProduct
{
    Clothe *clothe = [[Clothe alloc] init];
    clothe.productName = @"衣物";
    return clothe;
}


@end
