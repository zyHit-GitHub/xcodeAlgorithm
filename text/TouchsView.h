//
//  TouchsView.h
//  text
//
//  Created by zzy on 2017/3/27.
//  Copyright © 2017年 Yeoman. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TouchsView;

@protocol TouchViewDelegate <NSObject>

@optional //可选方法
-(void)touchViewBeginTouched:(TouchsView *)touchView;
-(void)touchViewEndTouched:(TouchsView *)touchView;


@end



@interface TouchsView : UIView

@end
