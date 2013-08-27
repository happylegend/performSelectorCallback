//
//  EventObject.m
//  PerformSelectorCallback
//
//  Created by 紫冬 on 13-8-27.
//  Copyright (c) 2013年 qsji. All rights reserved.
//

#import "EventObject.h"

@implementation EventObject
@synthesize callbackObject = _callbackObject;
@synthesize callbackFunctionName = _callbackFunctionName;


//赋值回调
-(void)setDelegateObject:(id)callbackObject callbackFunctionName:(NSString *)callbackFunctionName
{
    self.callbackObject = callbackObject;
    self.callbackFunctionName = callbackFunctionName;
}


//事件对象的处理方法
-(void)handleEventFunction
{
    //向回调类发送消息
    SEL func = NSSelectorFromString(self.callbackFunctionName);
    if ([self.callbackObject respondsToSelector:func])
    {
        [self.callbackObject performSelector:func];
        //如果需要带参数，那么可以使用
        /*
        [self.callbackObject performSelector:func withObject:myargument];
        [self.callbackObject performSelector:func withObject:myargument1 withObject:myargument2];
         */
    }
    else
    {
        NSLog(@"回调失败");
    }
}

@end
