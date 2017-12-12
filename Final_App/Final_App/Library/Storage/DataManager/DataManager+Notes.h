//
//  DataManager+Notes.h
//  Final_App
//
//  Created by Denis on 15.11.17.
//  Copyright © 2017 Denis. All rights reserved.
//

#import "DataManager.h"


@interface DataManager (Notes)

- (NSArray*)allNotes;
- (void)addNoteWithText:(NSString*)text;

@end
