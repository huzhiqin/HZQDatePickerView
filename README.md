# HZQDatePickerView
HZQDatePickerView(自定义时间选择器，包括开始日期和结束日期两种类型)

// 效果图地址
http://code.cocoachina.com/view/128153


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

// PS：已经修复小屏幕未显示月份的bug。谢谢大家的支持和反馈，如有任何问题请留言。
// QQ:276635035
