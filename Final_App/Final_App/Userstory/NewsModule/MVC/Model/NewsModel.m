//
//  NewsModel.m
//  Final_App
//
//  Created by Denis on 14.11.17.
//  Copyright © 2017 Denis. All rights reserved.
//

#import "NewsModel.h"
#import "NetworkManager+News.h"
#import "NewsItem.h"

@interface NewsModel ()

@property (nonatomic,strong) NSMutableArray *newsArray;


@end

@implementation NewsModel

- (NSMutableArray*)newsArray
{
    if (!_newsArray)
    {
        _newsArray = [NSMutableArray new];
    }
    return _newsArray;
}

- (NSInteger)newsCount
{
    return self.newsArray.count;
}

- (id)newsObjectAtIndex:(NSInteger)index
{
    return [self.newsArray objectAtIndex:index];
}

- (void)dataNeedsToReload
{
    [NetworkManager getNewsWithSuccess:^(id object)
    {
        NSDictionary *dictionary = (NSDictionary*)object;
        NSArray *articles = dictionary[@"articles"];
        [self saveArticals:articles];
        [self.output dataDidReload];
    
        
    } andFailure:^(NSError *error)
    {
        
        
    }];
}

- (void)saveArticals:(NSArray*)articles
{
    [self.newsArray removeAllObjects];
    
    for (NSInteger i=0; i < articles.count; i++)
    {
        NSDictionary *json = articles [i];
        NewsItem *news = [NewsItem newsItemFromJson:json];
        [self.newsArray addObject:news];
    }
}



@end
