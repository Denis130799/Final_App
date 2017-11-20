//
//  NetworkManager.h
//  Final_App
//
//  Created by Denis on 17.11.17.
//  Copyright © 2017 Denis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GlobalConstants.h"

@interface NetworkManager : NSObject

+ (void)sendRequest:(NSURLRequest*)request withSuccess:(Success)success andFialure:(Failure)failure;


@end
