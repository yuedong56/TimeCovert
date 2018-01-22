//
//  ViewController.h
//  TimeCovert
//
//  Created by yuedongkui on 16/8/8.
//  Copyright © 2016年 LY. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController<NSTextFieldDelegate>

@property (weak) IBOutlet NSTextField *timeStampTextField;
@property (weak) IBOutlet NSTextField *dateTextField;

@end

