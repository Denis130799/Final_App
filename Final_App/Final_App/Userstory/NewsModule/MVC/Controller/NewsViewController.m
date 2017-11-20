//
//  NewsViewController.m
//  Final_App
//
//  Created by Denis on 14.11.17.
//  Copyright © 2017 Denis. All rights reserved.
//

#import "NewsViewController.h"
#import "NewsModel.h"
#import "NewsModuleProtocol.h"
#import "NewsItem.h"
@interface NewsViewController () <UITableViewDelegate,UITableViewDataSource, NewsModelOutputProtocol>



@property (weak, nonatomic) IBOutlet UITableView *newsTableView;
@property (nonatomic, strong) NewsModel *model;

@end

@implementation NewsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.model = [NewsModel new];
    self.model.output = self;
    [self.model dataNeedsToReload];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.model newsCount];
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NewsCell"];
    NewsItem *news = [self.model newsObjectAtIndex:indexPath.row];
    cell.textLabel.text = news.title;
    
    
    return cell;
}

- (void)dataDidReload
{
    __weak typeof (self)weakSelf = self;
    dispatch_async(dispatch_get_main_queue(), ^{
        [weakSelf.newsTableView reloadData];
    });
}
@end
