//
//  Post.m
//  RoundedRectView
//
//  Created by Evgeny Lavrik on 12/14/12.
//  Copyright (c) 2012 Evgeny Lavrik. All rights reserved.
//

#import "Post.h"

@implementation Post

- (id)initWithAuthor:(NSString *)author subject:(NSString *)subject date:(NSString *)date
{
    self = [super init];
    self.author = author;
    self.subject = subject;
    self.date = date;
    
    return self;
}

@end
