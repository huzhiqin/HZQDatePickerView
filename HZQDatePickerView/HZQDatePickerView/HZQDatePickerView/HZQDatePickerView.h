//
//  HZQDatePickerView.h
//  HZQDatePickerView
//
//  Created by 1 on 15/10/26.
//  Copyright © 2015年 HZQ. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum{
    
    // 开始日期
    DateTypeOfStart = 0,
    
    // 结束日期
    DateTypeOfEnd,
    
}DateType;

@protocol HZQDatePickerViewDelegate <NSObject>

- (void)getSelectDate:(NSString *)date type:(DateType)type;

@end

@interface HZQDatePickerView : UIView

+ (HZQDatePickerView *)instanceDatePickerView;

@property (weak, nonatomic) IBOutlet UIDatePicker *datePickerView;

@property (nonatomic, weak) id<HZQDatePickerViewDelegate> delegate;

@property (nonatomic, assign) DateType type;

@end
