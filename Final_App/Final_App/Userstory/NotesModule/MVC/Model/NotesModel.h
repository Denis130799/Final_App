//
//  NotesModel.h
//  Final_App
//
//  Created by Denis on 12.12.2017.
//  Copyright © 2017 Denis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NotesModuleProtocol.h"

@interface NotesModel : NSObject <NotesModelInput>

@property (nonatomic, weak) id <NotesModelOutput> output;

@end
