# HZQDatePickerView
HZQDatePickerView(自定义时间选择器，包括开始日期和结束日期两种类型)

// 效果图地址
http://www.cocoachina.com/bbs/read.php?tid-329398.html

使用方法：
```oc 
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

// PS：已完美适配所有设备，修复部分小细节。谢谢大家的支持和反馈，如有任何问题请留言。

// QQ:276635035
