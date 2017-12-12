//
//  NetworkManager+Weather.h
//  Final_App
//
//  Created by Denis on 21.11.2017.
//  Copyright © 2017 Denis. All rights reserved.
//

#import "NetworkManager.h"

@interface NetworkManager (Weather)

+ (void)getWeatherWithSuccess:(Success)success andFailure:(Failure)failure;

@end
