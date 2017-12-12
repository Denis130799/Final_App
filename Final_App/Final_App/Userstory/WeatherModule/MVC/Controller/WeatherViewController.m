//
//  WeatherViewController.m
//  Final_App
//
//  Created by Denis on 14.11.17.
//  Copyright © 2017 Denis. All rights reserved.
//

#import "WeatherViewController.h"
#import "WeatherModel.h"
#import "MapModule.h"
#import "WeatherItem.h"
#import "WeatherView.h"

@interface WeatherViewController () <WeatherModuleOutputProtocol>
@property (weak, nonatomic) IBOutlet WeatherView *contentView;

@property (nonatomic, strong) WeatherModel *model;
@end

@implementation WeatherViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.model = [WeatherModel new];
    self.model.output = self;
    
    [self.model needRefreshWeatherData];
}

- (void)dataDidReloadWithModel:(id)model
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.contentView updateWithWithModel:model];
    });
    
    
}





@end
