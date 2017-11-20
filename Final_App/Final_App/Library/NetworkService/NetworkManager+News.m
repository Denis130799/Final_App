//
//  NetworkManager+News.m
//  Final_App
//
//  Created by Denis on 17.11.17.
//  Copyright © 2017 Denis. All rights reserved.
//

#import "NetworkManager+News.h"

static NSString *const kNewsApikey = @"f98433db948d4e72b08be86bd82e0c91";
static NSString *const kNewsURL = @"https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=";

@implementation NetworkManager (News)

+ (void)getNewsWithSuccess:(Success)success andFailure:(Failure)failure
{
    NSString *urlString = [NSString stringWithFormat:@"%@%@", kNewsURL, kNewsApikey];
    NSURL *url = [NSURL URLWithString:urlString];
    
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    
    
    [self sendRequest:urlRequest withSuccess:success andFialure:failure];
}

@end


