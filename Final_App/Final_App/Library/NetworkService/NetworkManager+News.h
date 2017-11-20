//
//  NetworkManager+News.h
//  Final_App
//
//  Created by Denis on 17.11.17.
//  Copyright © 2017 Denis. All rights reserved.
//

#import "NetworkManager.h"
#import "GlobalConstants.h"

@interface NetworkManager (News)

+ (void)getNewsWithSuccess:(Success)success andFailure:(Failure)failure;

@end
