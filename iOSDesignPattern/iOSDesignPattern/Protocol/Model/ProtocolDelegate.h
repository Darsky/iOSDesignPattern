//
//  ProtocolDelegate.h
//  iOSDesignPattern
//
//  Created by Darsky on 2017/12/14.
//  Copyright © 2017年 Darsky. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ProtocolDelegate <NSObject>

@required

- (void)requiredProtocolFunc:(NSString*)string;

@optional

- (void)optionalProtocolFunc:(NSString*)string;

@end
