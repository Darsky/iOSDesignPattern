//
//  GoodsListCell.m
//  iOSDesignPattern
//
//  Created by Darsky on 2017/12/19.
//  Copyright © 2017年 Darsky. All rights reserved.
//

#import "GoodsListCell.h"
#import "GoodsModel.h"

@implementation GoodsListCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setupDisplayGoodsInfoWithModel:(GoodsModel *)model
{
    [_goodsPic setImage:[UIImage imageNamed:model.goodsPic]];
    _goodsNameLabel.text = model.goodsName?:@"";
    _goodsDescLabel.text = model.goodsDesc?:@"";
}

@end
