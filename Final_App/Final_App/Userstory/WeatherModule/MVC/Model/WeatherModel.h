//
//  WeatherModule.h
//  Final_App
//
//  Created by Denis on 14.11.17.
//  Copyright © 2017 Denis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeatherModuleProtocol.h"

@interface WeatherModel : NSObject <WeatherModuleInputProtocol>

@property (nonatomic, weak) id <WeatherModuleOutputProtocol> output;

@end
