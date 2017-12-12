//
//  WeatherModuleProtocol.h
//  Final_App
//
//  Created by Denis on 14.11.17.
//  Copyright © 2017 Denis. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol WeatherModuleInputProtocol <NSObject>

- (void)needRefreshWeatherData;

@end

@protocol WeatherModuleOutputProtocol <NSObject>

- (void)dataDidReloadWithModel:(id)model;

@end
