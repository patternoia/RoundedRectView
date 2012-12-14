//
//  RoundedRectView.h
//  ImageBoard
//
//  Created by Evgeny Lavrik on 12/14/12.
//
//

#import <UIKit/UIKit.h>

@interface RoundedRectView : UIView

@property (nonatomic, assign) CGFloat borderMargin;
@property (nonatomic, assign) CGFloat borderWidth;
@property (nonatomic, assign) CGFloat borderRadius;
@property (nonatomic, retain) UIColor *backgroundColor;
@property (nonatomic, retain) UIColor *borderColor;
@property (nonatomic, retain) UIColor *fillingColor;

@end
