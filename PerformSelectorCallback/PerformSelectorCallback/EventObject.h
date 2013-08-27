//
//  EventObject.h
//  PerformSelectorCallback
//
//  Created by 紫冬 on 13-8-27.
//  Copyright (c) 2013年 qsji. All rights reserved.
//

/*
 这种回调的思想，其实还是使用了代理的方式，只不过是通过显式调用的方法，来实现回调，具体显式调用的方式就是
 EventObject对象，仍然调用自己的方法，但是在自己的方法，是向回调类继续发送消息，进而达到完成实现的目的。
 */

#import <Foundation/Foundation.h>

@interface EventObject : NSObject
{
    id _callbackObject;   //回调类
    NSString *_callbackFunctionName;   //回调函数的名字
}

@property(nonatomic, assign)id callbackObject;
@property(nonatomic, copy)NSString *callbackFunctionName;

-(void)setDelegateObject:(id)callbackObject callbackFunctionName:(NSString *)callbackFunctionName;

-(void)handleEventFunction;

@end
