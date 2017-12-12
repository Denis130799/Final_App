//
//  NotesModel.m
//  Final_App
//
//  Created by Denis on 12.12.2017.
//  Copyright © 2017 Denis. All rights reserved.
//

#import "NotesModel.h"
#import "DataManager+Notes.h"

@interface NotesModel ()

@property (nonatomic, strong) NSMutableArray *notesArray;

@end

@implementation NotesModel

- (void)reloadData
{
    NSArray *array = [[DataManager storage] allNotes];
    self.notesArray = [NSMutableArray arrayWithArray:array];
}

#pragma mark - modelInputProtocol

- (NSInteger)notesCount
{
    return self.notesArray.count;
}
- (id)noteAtIndex:(NSInteger)index
{
    return [self.notesArray objectAtIndex:index];
    
}
- (void)addNoteWithText:(NSString*)text
{
    [[DataManager storage] addNoteWithText:text];
    [self reloadData];
    [self.output dataDidReload];
}



@end
