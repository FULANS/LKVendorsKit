//
//  LKViewController.m
//  LKVendorsKit
//
//  Created by FULANS on 04/26/2022.
//  Copyright (c) 2022 FULANS. All rights reserved.
//

#import "LKViewController.h"
#import <LKVendorsKit/FSCalendar.h>

@interface LKViewController ()<FSCalendarDataSource,FSCalendarDelegate>

@property (nonatomic, strong) FSCalendar *calendar; ///<日历控件

@end

@implementation LKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.calendar.frame = CGRectMake(0, 0, 200, 200);
    [self.view addSubview:self.calendar];
    
}

- (FSCalendar *)calendar{
    if (!_calendar) {
        _calendar = [[FSCalendar alloc] init];
        _calendar.delegate = self;
        _calendar.dataSource = self;
        _calendar.layer.shadowColor = [UIColor colorWithRed:68/255.0 green:68/255.0 blue:68/255.0 alpha:0.05].CGColor;
        _calendar.layer.shadowOffset = CGSizeMake(0,2);
        _calendar.layer.shadowOpacity = 1;
        _calendar.layer.shadowRadius = 4;
    }
    return _calendar;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
