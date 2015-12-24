# HZQDatePickerView
HZQDatePickerView(自定义时间选择器，包括开始日期和结束日期两种类型)

` *有劳大家的小手抖一抖，给颗小星星★★～！谢谢！^ —— ^`

` *已完美适配所有设备，修复部分小细节,绿色、安全！。谢谢大家的支持和反馈，如有任何问题请留言。`

` *QQ:276635035`

// 效果图

![](https://github.com/huzhiqin/HZQDatePickerView/blob/master/HZQDatePickerView/ImageCache/screenshot.gif)

使用方法：
```oc 
注：要设置只显示年月日或年月日、时分秒的可在XIB里对datePicker的Mode进行设置。
// 开始时间

[self setupDateView:DateTypeOfStart];

// 结束时间    

[self setupDateView:DateTypeOfEnd];

- (void)setupDateView:(DateType)type {

    _pikerView = [HZQDatePickerView instanceDatePickerView];
    
    _pikerView.frame = CGRectMake(0, 0, ScreenRectWidth, ScreenRectHeight + 20);
    
    [_pikerView setBackgroundColor:[UIColor clearColor]];
    
    _pikerView.delegate = self;
    
    _pikerView.type = type;
    
    // 今天起之后的日期
    
    [_pikerView.datePickerView setMinimumDate:[NSDate date]];
    
    // 今天之前的日期
    
//    [_pikerView.datePickerView setMaximumDate:[NSDate date]];
    
    [self.view addSubview:_pikerView];

}

- (void)getSelectDate:(NSString *)date type:(DateType)type {

    NSLog(@"%d - %@", type, date);

}
```
