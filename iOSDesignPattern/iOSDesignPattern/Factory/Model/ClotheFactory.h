//
//  ClotheFactory.h
//  iOSDesignPattern
//
//  Created by Darsky on 2017/12/16.
//  Copyright © 2017年 Darsky. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Clothe;

@interface ClotheFactory : NSObject

+ (Clothe*)produceProduct;


@end



