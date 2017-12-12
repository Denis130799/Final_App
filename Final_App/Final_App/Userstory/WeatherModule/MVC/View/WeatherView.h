//
//  WeatherView.h
//  Final_App
//
//  Created by Denis on 24.11.2017.
//  Copyright © 2017 Denis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeatherItem.h"

@interface WeatherView : UIView

@property (nonatomic, weak) IBOutlet UILabel *citiNameLabel;
@property (nonatomic, weak) IBOutlet UILabel *temperatureLabel;
@property (nonatomic, weak) IBOutlet UILabel *humidityLabel;
@property (nonatomic, weak) IBOutlet UILabel *pressureLabel;
@property (nonatomic, weak) IBOutlet UILabel *descriptionLabel;
@property (nonatomic, weak) IBOutlet UIImageView *weatherImageView;

- (void)updateWithWithModel:(id)model;

@end
