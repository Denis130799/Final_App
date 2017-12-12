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
#import "NewsView.h"
#import "NewsDetailViewController.h"
@interface NewsViewController () <UITableViewDelegate,UITableViewDataSource, NewsModelOutputProtocol>



@property (nonatomic, weak) IBOutlet NewsView *contentView;
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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"ShowNewsDetail"]) {
        
        UITableViewCell *cell = sender;
        NSIndexPath *indexPath = [self.contentView.newsTableview indexPathForCell:cell];
        
        NewsDetailViewController *newsDetailViewController = segue.destinationViewController;
        newsDetailViewController.newsItem = [self.model newsObjectAtIndex:indexPath.row];
    }
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
        [weakSelf.contentView.newsTableview reloadData];
    });
    
  
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    NewsDetailViewController *newsDetailViewController = [storyboard instantiateViewControllerWithIdentifier:@"NewsDetailViewController"];
//    newsDetailViewController.newsItem = [self.model newsObjectAtIndex:indexPath.row];
//    [self.navigationController pushViewController:newsDetailViewController animated:YES];
    
}
@end
