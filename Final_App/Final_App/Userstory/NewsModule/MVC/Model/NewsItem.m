//
//  NewsItem.m
//  Final_App
//
//  Created by Denis on 20.11.2017.
//  Copyright © 2017 Denis. All rights reserved.
//

#import "NewsItem.h"

@implementation NewsItem

+(NewsItem*)newsItemFromJson:(NSDictionary*)json
{
    NewsItem *news = [NewsItem new];
    
    news.author = json[@"author"];
    news.textDescription = json[@"description"];
    news.date = json[@"publishedAt"];
    news.title = json[@"title"];
    news.source = json[@"source"][@"name"];
    news.imageURL = json[@"urlToImage"];
    news.newsURL = json[@"url"];
    
    return news;
    
}

@end
