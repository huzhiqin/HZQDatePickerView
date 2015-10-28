//
//  HZQDatePickerView.m
//  HZQDatePickerView
//
//  Created by 1 on 15/10/26.
//  Copyright © 2015年 HZQ. All rights reserved.
//

#import "HZQDatePickerView.h"
#import "UIColor+HexString.h"

@interface HZQDatePickerView ()

@property (nonatomic, strong) NSString *selectDate;

@property (weak, nonatomic) IBOutlet UIButton *cannelBtn;
@property (weak, nonatomic) IBOutlet UIButton *sureBtn;
@property (weak, nonatomic) IBOutlet UIView *backgVIew;

@end

@implementation HZQDatePickerView

+ (HZQDatePickerView *)instanceDatePickerView
{
    NSArray* nibView =  [[NSBundle mainBundle] loadNibNamed:@"HZQDatePickerView" owner:nil options:nil];
    return [nibView objectAtIndex:0];
}

- (void)awakeFromNib
{
    self.backgVIew.layer.cornerRadius = 5;
    self.backgVIew.layer.borderWidth = 1;
    self.backgVIew.layer.borderColor = [[UIColor whiteColor]CGColor];
    self.backgVIew.layer.masksToBounds = YES;
    
    /** 确定 */
    self.sureBtn.layer.cornerRadius = 3;
    self.sureBtn.layer.borderWidth = 1;
    self.sureBtn.layer.borderColor = [[UIColor colorwithHexString:@"5AC33B"] CGColor];
    self.sureBtn.layer.masksToBounds = YES;
    
    /** 取消按钮 */
    self.cannelBtn.layer.cornerRadius = 3;
    self.cannelBtn.layer.borderWidth = 1;
    self.cannelBtn.layer.borderColor = [[UIColor colorwithHexString:@"BAB9B9"] CGColor];
    self.cannelBtn.layer.masksToBounds = YES;
}

- (NSString *)timeFormat
{
    NSDate *selected = [self.datePickerView date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    NSString *currentOlderOneDateStr = [dateFormatter stringFromDate:selected];
    return currentOlderOneDateStr;
}

- (void)animationbegin:(UIView *)view {
    /* 放大缩小 */
    
    // 设定为缩放
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    
    // 动画选项设定
    animation.duration = 0.1; // 动画持续时间
    animation.repeatCount = -1; // 重复次数
    animation.autoreverses = YES; // 动画结束时执行逆动画
    
    // 缩放倍数
    animation.fromValue = [NSNumber numberWithFloat:1.0]; // 开始时的倍率
    animation.toValue = [NSNumber numberWithFloat:0.9]; // 结束时的倍率
    
    // 添加动画
    [view.layer addAnimation:animation forKey:@"scale-layer"];

}

- (IBAction)removeBtnClick:(id)sender {
    // 开始动画
    [self animationbegin:sender];

    [UIView animateWithDuration:0.3 animations:^{
        self.alpha = 0;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

- (IBAction)sureBtnClick:(id)sender {
    // 开始动画
    [self animationbegin:sender];
    
    self.selectDate = [self timeFormat];
    
    //delegate
    [self.delegate getSelectDate:self.selectDate type:self.type];
    
    
    [self removeBtnClick:nil];
}

@end
