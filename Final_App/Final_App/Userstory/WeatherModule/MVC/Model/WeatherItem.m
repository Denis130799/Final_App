//
//  WeatherItem.m
//  Final_App
//
//  Created by Denis on 21.11.2017.
//  Copyright © 2017 Denis. All rights reserved.
//

#import "WeatherItem.h"

@implementation WeatherItem

- (NSNumber*)tempInCelsius
{
    return @(self.temperature.doubleValue - 273.15);
}

+ (WeatherItem*)weatherItemFromJson:(NSDictionary*)json
{
    WeatherItem *item = [WeatherItem new];
    
    item.cityName = json[@"name"];
    item.pressure = json[@"main"][@"pressure"];
    item.humidity = json[@"main"][@"humidity"];
    item.temperature = json[@"main"][@"temp"];
    
    NSArray *weather = json[@"weather"];
    NSDictionary *dictWeather = weather.firstObject;
    
    item.textDescription =  dictWeather[@"description"];
    item.iconName = dictWeather[@"icon"];
    
    return item;
}

@end
