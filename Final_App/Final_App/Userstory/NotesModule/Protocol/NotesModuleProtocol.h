//
//  NotesModuleProtocol.h
//  Final_App
//
//  Created by Denis on 12.12.2017.
//  Copyright © 2017 Denis. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NotesModelInput <NSObject>

- (NSInteger)notesCount;
- (id)noteAtIndex:(NSInteger)index;
- (void)addNoteWithText:(NSString*)text;
- (void)notesNeedToReload;
- (void)removeNoteAtIndex:(NSInteger)index;
@end

@protocol NotesModelOutput <NSObject>

- (void)dataDidReload;

@end

@protocol NotesUserInterfaceInput <NSObject>

- (void)addButtonWasTapped;


@end

@protocol NotesUserInterfaceOutput <NSObject>


@end
