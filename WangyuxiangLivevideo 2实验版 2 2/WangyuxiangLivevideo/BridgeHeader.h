//
//  BridgeHeader.h
//  WangyuxiangLivevideo
//
//  Created by qianfeng on 16/11/24.
//  Copyright © 2016年 zhb. All rights reserved.
//

#ifndef BridgeHeader_h
#define BridgeHeader_h
//显示地图的库
#import <MAMapKit/MAMapKit.h>
//搜索数据的库
#import <AMapSearchKit/AMapSearchKit.h>
#import <AMapFoundationKit/AMapFoundationKit.h>
//#import <EMSDK.h>

#endif /* BridgeHeader_h */

#if TARGET_OS_IPHONE

#import "EMClient.h"
#import "EMClientDelegate.h"

#else

#import <HyphenateLite_CN/EMClient.h>
#import <HyphenateLite_CN/EMClientDelegate.h>

#endif