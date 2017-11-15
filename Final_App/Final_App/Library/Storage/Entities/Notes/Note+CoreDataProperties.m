//
//  Note+CoreDataProperties.m
//  Final_App
//
//  Created by Denis on 15.11.17.
//  Copyright © 2017 Denis. All rights reserved.
//
//

#import "Note+CoreDataProperties.h"

@implementation Note (CoreDataProperties)

+ (NSFetchRequest<Note *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Note"];
}

@dynamic text;
@dynamic date;
@dynamic isFavourite;

@end
