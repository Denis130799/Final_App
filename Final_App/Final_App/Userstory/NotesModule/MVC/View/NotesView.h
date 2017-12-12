//
//  NotesView.h
//  Final_App
//
//  Created by Denis on 12.12.2017.
//  Copyright © 2017 Denis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NotesModuleProtocol.h"

@interface NotesView : UIView <NotesUserInterfaceOutput>

@property (nonatomic, weak)id <NotesUserInterfaceInput> input;
@property (nonatomic, weak)IBOutlet UITableView *notesTableView;
@property (nonatomic, weak)IBOutlet UIButton *addButton;

@end
