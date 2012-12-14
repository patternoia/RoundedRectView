//
//  PostCell.h
//  ImageBoard
//
//  Created by Evgeny Lavrik on 12/13/12.
//
//

#import <UIKit/UIKit.h>
#import "Post.h"


@interface PostCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *authorLabel;
@property (strong, nonatomic) IBOutlet UILabel *subjectLabel;
@property (strong, nonatomic) IBOutlet UILabel *dateLabel;

- (void)configureWithObject:(Post *)object;

@end
