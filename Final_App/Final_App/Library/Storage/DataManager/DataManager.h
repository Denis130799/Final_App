//
//  DataManager.h
//  Final_App
//
//  Created by Denis on 15.11.17.
//  Copyright © 2017 Denis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
@interface DataManager : NSObject

+ (id)storage;
- (NSManagedObjectContext*)context;
- (void)saveAll;
@end
