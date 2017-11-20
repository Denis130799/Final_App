//
//  NetworkManager.m
//  Final_App
//
//  Created by Denis on 17.11.17.
//  Copyright © 2017 Denis. All rights reserved.
//

#import "NetworkManager.h"

@implementation NetworkManager

+ (void)sendRequest:(NSURLRequest*)request withSuccess:(Success)success andFialure:(Failure)failure
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *sessionDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error)
    {
        if (error)
        {
            failure(error);
        }
        else
        {
            NSError *jsonError = nil;
            
            NSDictionary *responseDictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
            
            if (jsonError)
            {
                failure(jsonError);
            }
            else
            {
                success(responseDictionary);
            }
        }
    }];
    [sessionDataTask resume];
 
}




@end
