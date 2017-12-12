//
//  NetworkManager+Weather.m
//  Final_App
//
//  Created by Denis on 21.11.2017.
//  Copyright © 2017 Denis. All rights reserved.
//

#import "NetworkManager+Weather.h"

static NSString *const kWeatherAPIKey = @"9826d46e641c00b93a9cd728d00e6f63";
static NSString *const kWeatherURLByCityName = @"https://api.openweathermap.org/data/2.5/weather?q=";
static NSString *const KCountryCode = @"ua";

@implementation NetworkManager (Weather)

+ (NSURLRequest*)weatherForKharkivRequest
{
    NSString *cityName = @"Kharkiv";
    NSString *urlString = [NSString stringWithFormat:@"%@%@,%@&appid=%@", kWeatherURLByCityName, cityName, KCountryCode, kWeatherAPIKey];
    NSURL *url = [NSURL URLWithString:urlString];
    return [NSURLRequest requestWithURL:url];
    
}

+ (void)getWeatherWithSuccess:(Success)success andFailure:(Failure)failure
{
    NSURLRequest *request = [self weatherForKharkivRequest];
    [self sendRequest:request withSuccess:success andFialure:failure];
}

@end
