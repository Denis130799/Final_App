//
//  WeatherItem.h
//  Final_App
//
//  Created by Denis on 21.11.2017.
//  Copyright © 2017 Denis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherItem : NSObject

@property (nonatomic, strong) NSString *cityName;
@property (nonatomic, strong) NSNumber *humidity;
@property (nonatomic, strong) NSNumber *pressure;
@property (nonatomic, strong) NSNumber *temperature;
@property (nonatomic, strong) NSString *textDescription;
@property (nonatomic, strong) NSString *iconName;

+ (WeatherItem*)weatherItemFromJson:(NSDictionary*)json;

- (NSNumber*)tempInCelsius;
@end
