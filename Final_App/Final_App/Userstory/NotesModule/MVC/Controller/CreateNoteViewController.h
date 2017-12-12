//
//  CreateNoteViewController.h
//  Final_App
//
//  Created by Denis on 12.12.2017.
//  Copyright © 2017 Denis. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CreateNoteViewControllerProtocol <NSObject>

- (void)textDidEnter:(NSString*)text;

@end

@interface CreateNoteViewController : UIViewController

@property (nonatomic, weak)id <CreateNoteViewControllerProtocol> delegate;


@end
