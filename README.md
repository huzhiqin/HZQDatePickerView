# HZQDatePickerView
HZQDatePickerView(自定义时间选择器，包括开始日期和结束日期两种类型)

// 效果图地址
http://code.cocoachina.com/detail/329398/%E8%87%AA%E5%AE%9A%E4%B9%89%E6%97%B6%E9%97%B4%E9%80%89%E6%8B%A9%E5%99%A8DatePicker/


使用方法：


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
    [_pikerView.datePickerView setMinimumDate:[NSDate date]];
    [self.view addSubview:_pikerView];

}

- (void)getSelectDate:(NSString *)date type:(DateType)type {

    NSLog(@"%d - %@", type, date);

}

// PS：模拟器如果没显示月份的话，请真机测试。真机是没问题的哈。有任何问题请留言。
