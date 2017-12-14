//
//  ProtocolViewController.h
//  iOSDesignPattern
//
//  Created by Darsky on 2017/12/14.
//  Copyright © 2017年 Darsky. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProtocolDelegate.h"


@interface ProtocolViewController : UIViewController<ProtocolDelegate>

@property (weak, nonatomic) id <ProtocolDelegate> delegate;

@end
