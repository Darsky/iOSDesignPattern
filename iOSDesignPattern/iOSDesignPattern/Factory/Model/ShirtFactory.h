//
//  ShirtFactory.h
//  iOSDesignPattern
//
//  Created by Darsky on 2017/12/16.
//  Copyright © 2017年 Darsky. All rights reserved.
//

#import "ClotheFactory.h"

@interface ShirtFactory : ClotheFactory

+ (Clothe*)produceProduct;

@end
