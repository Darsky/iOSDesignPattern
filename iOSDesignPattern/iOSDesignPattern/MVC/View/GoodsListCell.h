//
//  GoodsListCell.h
//  iOSDesignPattern
//
//  Created by Darsky on 2017/12/19.
//  Copyright © 2017年 Darsky. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GoodsModel;

@interface GoodsListCell : UITableViewCell
{
    __weak IBOutlet UIImageView *_goodsPic;
    
    __weak IBOutlet UILabel     *_goodsNameLabel;
    
    __weak IBOutlet UILabel     *_goodsDescLabel;
}

- (void)setupDisplayGoodsInfoWithModel:(GoodsModel*)model;
@end
