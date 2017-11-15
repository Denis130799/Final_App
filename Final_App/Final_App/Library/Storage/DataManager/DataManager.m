//
//  DataManager.m
//  Final_App
//
//  Created by Denis on 15.11.17.
//  Copyright © 2017 Denis. All rights reserved.
//

#import "DataManager.h"

@interface DataManager ()

@property (nonatomic, strong)NSPersistentContainer *persistentContainer;

@end

@implementation DataManager

- (instancetype)init
{
    self = [super init];
    
    if (self)
    {
        self.persistentContainer = [[NSPersistentContainer alloc]initWithName:@"AppDataModel"];
        
        [self.persistentContainer loadPersistentStoresWithCompletionHandler:^(NSPersistentStoreDescription * description, NSError * error )
        {
            if (error != nil)
            {
                NSLog(@"Filed to load core data stack: %@", error);
                
                abort();
                
            }
        }];
        
    }
    return self;
}

+ (id)storage;
{
    static DataManager *dataManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once (&onceToken, ^{
        dataManager = [[self alloc] init];
    });
    return dataManager;
}

- (NSManagedObjectContext*)context;
{
    return self.persistentContainer.viewContext;
}

- (void)saveAll;
{
    NSError *error = nil;
    
    if (self.context != nil)
    {
        if ([self.context hasChanges]&& ![self.context save:&error])
        {
            NSLog(@"unresolved error %@", error);
            abort();
        }
    }
}
@end
