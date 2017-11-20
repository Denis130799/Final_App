//
//  NewsItem.h
//  Final_App
//
//  Created by Denis on 20.11.2017.
//  Copyright © 2017 Denis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewsItem : NSObject
@property (nonatomic, strong) NSString *author;
@property (nonatomic, strong) NSString *textDescription;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *source;
@property (nonatomic, strong) NSString *imageURL;
@property (nonatomic, strong) NSString *newsURL;

+(NewsItem*)newsItemFromJson:(NSDictionary*)json;


@end
