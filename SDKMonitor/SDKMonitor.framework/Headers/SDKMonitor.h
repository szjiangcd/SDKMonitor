//
//  SDKMonitor.h
//  Monitor
//
//  Created by 曹茂鑫 on 2017/5/26.
//  Copyright © 2017年 曹茂鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, SDKConnectServerType) {
    SDKConnectServerPRO,                                // 生产环境
    SDKConnectServerSIT,                                // SIT环境
    SDKConnectServerUAT,                                // UAT环境
};

@interface SDKMonitor : NSObject

/**
 开启行为数据监听

 @param channelCode 渠道编码
 @param channelSecret 渠道秘钥
 @param contact 是否获取通讯录权限,默认是NO
 @param calendar 是否获取日历权限,默认是NO
 @param connectServer 服务器环境
 */
+(void)startMonitorWithChannelCode:(NSString *const _Nonnull)channelCode channelSecret:(NSString *const _Nonnull)channelSecret  recordContact:(BOOL)contact calendar:(BOOL)calendar connectServer:(SDKConnectServerType)connectServer;

/**
 是否开启调试模式

 @param log YES则打印当前sdk各类信息,NO则不打印,默认是NO
 */
+ (void)setLog:(BOOL)log;

@end


@interface UIView (SDKIdentifier)

/**  SDK埋点名字  */
@property (nonatomic, copy) NSString * _Nonnull SDKIdentifier;


@end
