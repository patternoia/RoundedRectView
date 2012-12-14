//
//  PostCell.m
//  ImageBoard
//
//  Created by Evgeny Lavrik on 12/13/12.
//
//

#import <QuartzCore/QuartzCore.h>
#import "RoundedRectView.h"
#import "PostCell.h"

@implementation PostCell

- (void)configureWithObject:(Post *)object
{
    self.authorLabel.text = object.author;
    self.subjectLabel.text = object.subject;
    self.dateLabel.text = object.date;
    
    if (!self.backgroundView)
    {
        RoundedRectView *view = nil;
        view = [[RoundedRectView alloc] initWithFrame:self.frame];
        view.borderColor = [UIColor colorWithRed:204/255.0f green:204/255.0f blue:204/255.0f alpha:1.0f];
        view.borderMargin = 5.0f;
        view.borderRadius = 10.0f;
        view.borderWidth = 2.0f;
        view.fillingColor = [UIColor colorWithRed:221/255.0f green:221/255.0f blue:221/255.0f alpha:1.0f];
        view.backgroundColor = self.superview.backgroundColor;
        self.backgroundView = view;
    }
}

@end
