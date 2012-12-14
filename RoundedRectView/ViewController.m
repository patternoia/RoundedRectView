//
//  ViewController.m
//  RoundedRectView
//
//  Created by Evgeny Lavrik on 12/14/12.
//  Copyright (c) 2012 Evgeny Lavrik. All rights reserved.
//

#import "ViewController.h"
#import "Post.h"
#import "PostCell.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray *posts;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self.tableView registerNib:[UINib nibWithNibName:@"PostCell" bundle:nil] forCellReuseIdentifier:@"PostCell"];
    
    self.posts = [NSArray arrayWithObjects:
                  [[Post alloc] initWithAuthor:@"Author 1" subject:@"Subject 1" date:@"Date 1"],
                  [[Post alloc] initWithAuthor:@"Author 2" subject:@"Subject 2" date:@"Date 2"],
                  [[Post alloc] initWithAuthor:@"Author 3" subject:@"Subject 3" date:@"Date 3"],
                  [[Post alloc] initWithAuthor:@"Author 4" subject:@"Subject 4" date:@"Date 4"],
                  nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.posts.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PostCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"PostCell" forIndexPath:indexPath];
    
    [cell configureWithObject:[self.posts objectAtIndex:indexPath.row]];
    
    return cell;
}

@end
