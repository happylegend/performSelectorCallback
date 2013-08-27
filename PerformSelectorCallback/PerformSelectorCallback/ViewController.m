//
//  ViewController.m
//  PerformSelectorCallback
//
//  Created by 紫冬 on 13-8-27.
//  Copyright (c) 2013年 qsji. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
}

//处理事件的实现
-(void)handleEvent
{
    NSLog(@"处理事件");
    //......
    //......
    //......
}

-(IBAction)onClickButtonHandleEvent:(id)sender
{
    EventObject *eventObject = [[EventObject alloc] init];
    [eventObject setDelegateObject:self callbackFunctionName:@"handleEvent"];
    [eventObject handleEventFunction];//事件对象处理事件，实际上是继续向代理对象发送处理事件的消息。
    [eventObject release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
