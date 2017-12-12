//
//  CreateNoteViewController.m
//  Final_App
//
//  Created by Denis on 12.12.2017.
//  Copyright © 2017 Denis. All rights reserved.
//

#import "CreateNoteViewController.h"

@interface CreateNoteViewController () <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation CreateNoteViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    if ([self.delegate respondsToSelector:@selector(textDidEnter:)])
    {
        [self.delegate textDidEnter:self.textView.text];
        
    }
}
- (IBAction)backButtonAction:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
