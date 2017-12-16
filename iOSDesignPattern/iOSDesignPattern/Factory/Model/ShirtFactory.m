//
//  ShirtFactory.m
//  iOSDesignPattern
//
//  Created by Darsky on 2017/12/16.
//  Copyright © 2017年 Darsky. All rights reserved.
//

#import "ShirtFactory.h"

@implementation ShirtFactory

+ (Clothe*)produceProduct
{
    Shirt *shirt = [[Shirt alloc] init];
    shirt.productName = @"衬衣分厂-衬衣";
    return shirt;
}
@end
