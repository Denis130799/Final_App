//
//  DataManager+Notes.m
//  Final_App
//
//  Created by Denis on 15.11.17.
//  Copyright © 2017 Denis. All rights reserved.
//

#import "DataManager+Notes.h"
#import "Note+CoreDataProperties.h"

@implementation DataManager (Notes)

- (NSArray*)allNotes
{
    NSError *error = nil;
    
    NSFetchRequest *request = [Note fetchRequest];
    NSArray *result = [self.context executeFetchRequest:request error:&error];
    
    if (error)
    {
        return nil;
    }
    return result;
}

- (void)addNoteWithText:(NSString*)text
{
    Note *newNote = [NSEntityDescription insertNewObjectForEntityForName:@"Note" inManagedObjectContext:self.context];
    newNote.text = text;
    newNote.date = [NSDate date];
    [self saveAll]; 
    
}

- (void)deleteNote:(id)note
{
    [self.context deleteObject:note];
    [self saveAll];
}

@end
