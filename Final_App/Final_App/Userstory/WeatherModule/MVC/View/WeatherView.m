//
//  WeatherView.m
//  Final_App
//
//  Created by Denis on 24.11.2017.
//  Copyright © 2017 Denis. All rights reserved.
//

#import "WeatherView.h"

@implementation WeatherView

- (void)updateWithWithModel:(id)model
{
    WeatherItem *weather = model;
    
    self.citiNameLabel.text = weather.cityName;
    self.temperatureLabel.text = weather.tempInCelsius.stringValue;
    self.humidityLabel.text = weather.humidity.stringValue;
    self.pressureLabel.text = weather.pressure.stringValue;
    self.descriptionLabel.text = weather.textDescription;
    self.weatherImageView.image = [UIImage imageNamed:weather.iconName];
}


@end
