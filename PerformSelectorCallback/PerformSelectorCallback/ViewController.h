//
//  ViewController.h
//  PerformSelectorCallback
//
//  Created by 紫冬 on 13-8-27.
//  Copyright (c) 2013年 qsji. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventObject.h"

@interface ViewController : UIViewController
{
    IBOutlet UIButton *buttonHandleEvent;
}

-(IBAction)onClickButtonHandleEvent:(id)sender;
-(void)handleEvent;

@end
