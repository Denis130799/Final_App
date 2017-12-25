//
//  NotesViewController.m
//  Final_App
//
//  Created by Denis on 14.11.17.
//  Copyright © 2017 Denis. All rights reserved.
//

#import "NotesViewController.h"
#import "NotesView.h"
#import "NotesModel.h"
#import "NotesModuleProtocol.h"
#import "CreateNoteViewController.h"
#import "Note+CoreDataProperties.h"

@interface NotesViewController () <NotesUserInterfaceInput, NotesModelOutput, CreateNoteViewControllerProtocol, UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet NotesView *contentView;
@property (nonatomic, strong) NotesModel *model;


@end

@implementation NotesViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setup];
    [self.model notesNeedToReload];
}

- (void)setup
{
    self.model = [NotesModel new];
    self.model.output = self;
    self.contentView.input = self;
    self.contentView.notesTableView.dataSource = self;
    self.contentView.notesTableView.delegate = self;
    self.contentView.notesTableView.allowsSelectionDuringEditing = NO;
}

#pragma mark - NotesModelOutput

- (void)dataDidReload
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.contentView.notesTableView reloadData];
    });
}

#pragma mark - NotesUserInterfaceInput

- (void)addButtonWasTapped
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    CreateNoteViewController *createNoteVC = [storyboard instantiateViewControllerWithIdentifier:@"CreateNoteViewController"];
    createNoteVC.delegate = self;
    [self presentViewController:createNoteVC animated:YES completion:nil];
}

#pragma mark - CreateNoteViewControllerProtocol

- (void)textDidEnter:(NSString *)text
{
    if (text.length > 0)
    {
        [self.model addNoteWithText:text];
    }
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.model notesCount];
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellNote"];
    Note *note = [self.model noteAtIndex:indexPath.row];
    cell.textLabel.text = note.text;
    
    return cell;
    
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        [self.model removeNoteAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationRight];
    }
}

@end
