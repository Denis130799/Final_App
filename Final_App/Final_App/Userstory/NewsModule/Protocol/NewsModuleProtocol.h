//
//  NewsModuleProtocol.h
//  Final_App
//
//  Created by Denis on 14.11.17.
//  Copyright © 2017 Denis. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NewsModelInputProtocol <NSObject>

- (NSInteger)newsCount;
- (id)newsObjectAtIndex:(NSInteger)index;
- (void)dataNeedsToReload;

@end

@protocol NewsModelOutputProtocol <NSObject>

- (void)dataDidReload;


@end

