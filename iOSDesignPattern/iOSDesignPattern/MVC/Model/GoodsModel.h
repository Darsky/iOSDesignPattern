//
//  GoodModel.h
//  iOSDesignPattern
//
//  Created by Darsky on 2017/12/19.
//  Copyright © 2017年 Darsky. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface GoodsModel : NSObject

@property (copy, nonatomic) NSString *goodsName;

@property (copy, nonatomic) NSString *goodsDesc;

@property (copy, nonatomic) NSString *goodsPic;

+ (instancetype)goodsModelWithDict:(NSDictionary*)dic;
@end
