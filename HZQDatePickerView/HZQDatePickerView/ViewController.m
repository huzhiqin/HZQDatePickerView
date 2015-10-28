//
//  ViewController.m
//  HZQDatePickerView
//
//  Created by 1 on 15/10/28.
//  Copyright © 2015年 HZQ. All rights reserved.
//

#import "ViewController.h"
#import "HZQDatePickerView.h"

// 屏幕尺寸 ScreenRect
#define ScreenRect [UIScreen mainScreen].applicationFrame
#define ScreenRectHeight [UIScreen mainScreen].applicationFrame.size.height
#define ScreenRectWidth [UIScreen mainScreen].applicationFrame.size.width

@interface ViewController () <HZQDatePickerViewDelegate> {
    
    HZQDatePickerView *_pikerView;
}

@property (weak, nonatomic) IBOutlet UILabel *startLabel;
@property (weak, nonatomic) IBOutlet UILabel *endLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

// 开始时间
- (IBAction)startDateClick:(id)sender {
    
    [self setupDateView:DateTypeOfStart];
    
}

// 结束时间
- (IBAction)endDateClick:(id)sender {
    
    [self setupDateView:DateTypeOfEnd];
    
}

- (void)setupDateView:(DateType)type {
    
    _pikerView = [HZQDatePickerView instanceDatePickerView];
    _pikerView.frame = CGRectMake(0, 0, ScreenRectWidth, ScreenRectHeight + 20);
    [_pikerView setBackgroundColor:[UIColor clearColor]];
    _pikerView.delegate = self;
    _pikerView.type = type;
    [_pikerView.datePickerView setMinimumDate:[NSDate date]];
    [self.view addSubview:_pikerView];
    
}

- (void)getSelectDate:(NSString *)date type:(DateType)type {
    NSLog(@"%d - %@", type, date);
    
    switch (type) {
        case DateTypeOfStart:
            _startLabel.text = [NSString stringWithFormat:@"开始日期:%@", date];
            
            break;
            
        case DateTypeOfEnd:
            _endLabel.text = [NSString stringWithFormat:@"结束日期:%@", date];
            
            break;
            
        default:
            break;
    }
}

@end
