//
//  ViewController.m
//  TimeCovert
//
//  Created by yuedongkui on 16/8/8.
//  Copyright © 2016年 LY. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.timeStampTextField.delegate = self;
    self.timeStampTextField.placeholderString = @"输入时间戳，然后按tab键出结果";
}


- (BOOL)control:(NSControl *)control textShouldEndEditing:(NSText *)fieldEditor
{
//    1432283231
    self.dateTextField.stringValue = [self stringFromDate:[NSDate dateWithTimeIntervalSince1970:[fieldEditor.string intValue]]];
    return YES;
}

/** NSDate转为NSString */
- (NSString *)stringFromDate:(NSDate *)date
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
    return [dateFormatter stringFromDate:date];
}

- (IBAction)buttonClick:(id)sender {
    self.dateTextField.stringValue = [self stringFromDate:[NSDate dateWithTimeIntervalSince1970:[self.timeStampTextField.stringValue intValue]]];
}

@end
