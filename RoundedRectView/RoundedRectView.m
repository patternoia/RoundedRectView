//
//  RoundedRectView.m
//  ImageBoard
//
//  Created by Evgeny Lavrik on 12/14/12.
//
//

#import "RoundedRectView.h"

@implementation RoundedRectView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    CGFloat radius = self.borderRadius;
    CGFloat margin = self.borderMargin;
    CGFloat width = self.borderWidth;
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [self.backgroundColor CGColor]);
    CGContextFillRect(context, rect);
    
    CGContextSetFillColorWithColor(context, [self.fillingColor CGColor]);
    
    CGMutablePathRef path = CGPathCreateMutable();
    
    CGPathMoveToPoint(path, NULL, rect.origin.x + margin, rect.origin.y + margin + radius);
    CGPathAddLineToPoint(path, NULL, rect.origin.x + margin, rect.origin.y + rect.size.height - margin - radius);
    CGPathAddArc(path, NULL, rect.origin.x + margin + radius, rect.origin.y + rect.size.height - margin - radius,
                    radius, M_PI, M_PI / 2, 1); //STS fixed
    CGPathAddLineToPoint(path, NULL, rect.origin.x + rect.size.width - margin - radius,
                            rect.origin.y + rect.size.height - margin);
    CGPathAddArc(path, NULL, rect.origin.x + rect.size.width - margin - radius,
                    rect.origin.y + rect.size.height - margin - radius, radius, M_PI / 2, 0.0f, 1);
    CGPathAddLineToPoint(path, NULL, rect.origin.x + rect.size.width - margin, rect.origin.y + margin + radius);
    CGPathAddArc(path, NULL, rect.origin.x + rect.size.width - margin - radius, rect.origin.y + margin + radius,
                    radius, 0.0f, -M_PI / 2, 1);
    CGPathAddLineToPoint(path, NULL, rect.origin.x + margin + radius, rect.origin.y + margin);
    CGPathAddArc(path, NULL, rect.origin.x + margin + radius, rect.origin.y + margin + radius, radius,
                    -M_PI / 2, M_PI, 1);
    
    CGContextBeginPath(context);
    CGContextAddPath(context, path);
    CGContextFillPath(context);

    CGContextSetLineWidth(context, width);
    CGContextSetStrokeColorWithColor(context, [self.borderColor CGColor]);
    CGContextBeginPath(context);
    CGContextAddPath(context, path);
    CGContextStrokePath(context);
    CFRelease(path);
}


@end
