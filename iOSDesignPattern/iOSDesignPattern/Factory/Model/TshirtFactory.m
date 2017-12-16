//
//  TshirtFactory.m
//  iOSDesignPattern
//
//  Created by Darsky on 2017/12/16.
//  Copyright © 2017年 Darsky. All rights reserved.
//

#import "TshirtFactory.h"
#import "Tshirt.h"


@implementation TshirtFactory

+ (Clothe*)produceProduct
{
    Tshirt *tshirt = [[Tshirt alloc] init];
    return tshirt;
}

@end


