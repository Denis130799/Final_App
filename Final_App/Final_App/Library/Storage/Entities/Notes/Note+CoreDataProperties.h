//
//  Note+CoreDataProperties.h
//  Final_App
//
//  Created by Denis on 15.11.17.
//  Copyright © 2017 Denis. All rights reserved.
//
//

#import "Note+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Note (CoreDataProperties)

+ (NSFetchRequest<Note *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *text;
@property (nullable, nonatomic, copy) NSDate *date;
@property (nonatomic) BOOL isFavourite;

@end

NS_ASSUME_NONNULL_END
