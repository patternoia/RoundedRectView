//
//  Post.h
//  RoundedRectView
//
//  Created by Evgeny Lavrik on 12/14/12.
//  Copyright (c) 2012 Evgeny Lavrik. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Post : NSObject

@property (nonatomic, strong) NSString *author;
@property (nonatomic, strong) NSString *subject;
@property (nonatomic, strong) NSString *date;

- (id)initWithAuthor:(NSString *)author subject:(NSString *)subject date:(NSString *)date;

@end
