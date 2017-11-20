//
//  NewsModel.h
//  Final_App
//
//  Created by Denis on 14.11.17.
//  Copyright © 2017 Denis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NewsModuleProtocol.h"

@interface NewsModel : NSObject <NewsModelInputProtocol>

@property (nonatomic, weak) id <NewsModelOutputProtocol> output;



@end
