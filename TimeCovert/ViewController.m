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
    
    self.dateTextField2.delegate = self;
    self.dateTextField2.placeholderString = @"格式：17-01-01";
}


- (BOOL)control:(NSControl *)control textShouldEndEditing:(NSText *)fieldEditor
{
//    1432283231
    if (control == self.timeStampTextField) {
        [self buttonClick:nil];
    }
    else {
        [self button2:nil];
    }
    return YES;
}

/** NSDate转为NSString */
- (NSString *)stringFromDate:(NSDate *)date
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    return [dateFormatter stringFromDate:date];
}

- (NSDate *)dateFromString:(NSString *)string
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yy-MM-dd"];
    NSDate *date = [dateFormatter dateFromString:string];
    return date;
}

- (IBAction)buttonClick:(id)sender {
    self.dateTextField.stringValue = [self stringFromDate:[NSDate dateWithTimeIntervalSince1970:[self.timeStampTextField.stringValue intValue]]];
}

- (IBAction)button2:(id)sender {
    NSDate *date = [self dateFromString:self.dateTextField2.stringValue];
    self.timeStampTextField2.stringValue = [NSString stringWithFormat:@"%.0f", [date timeIntervalSince1970]];
}

@end
