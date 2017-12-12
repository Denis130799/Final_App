//
//  WeatherModule.m
//  Final_App
//
//  Created by Denis on 14.11.17.
//  Copyright © 2017 Denis. All rights reserved.
//

#import "WeatherModel.h"
#import "NetworkManager+Weather.h"
#import "WeatherItem.h"

@implementation WeatherModel

- (void)needRefreshWeatherData
{
    [NetworkManager getWeatherWithSuccess:^(id object) {
        WeatherItem *weather = [WeatherItem weatherItemFromJson:object];
        [self.output dataDidReloadWithModel:weather];
        
    } andFailure:^(NSError *error) {
        
    }];
}

@end
