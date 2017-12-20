//
//  GoodsViewModel.h
//  iOSDesignPattern
//
//  Created by Darsky on 2017/12/20.
//  Copyright © 2017年 Darsky. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ResponeDataBlock) (id responeData);

typedef void (^ErrorBlock) (id errorCode);

@interface GoodsViewModel : NSObject

@property (strong, nonatomic) ResponeDataBlock responeBlock;

@property (strong, nonatomic) ErrorBlock errorBlock;

- (void)setBlockWithReturnBlock: (ResponeDataBlock) responeBlock
                 WithErrorBlock: (ErrorBlock) errorBlock;

- (void)viewModelLoadData;

@end
