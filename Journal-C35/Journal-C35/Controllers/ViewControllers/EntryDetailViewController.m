//
//  EntryDetailViewController.m
//  Journal-C35
//
//  Created by Todd Crandall on 8/10/20.
//  Copyright © 2020 Todd Crandall. All rights reserved.
//

#import "EntryDetailViewController.h"
#import "EntryController.h"

@interface EntryDetailViewController ()

//MARK: Outlets
@property (weak, nonatomic) IBOutlet UITextField *entryTitleLabel;
@property (weak, nonatomic) IBOutlet UITextView *entryDetailTextView;

@end

@implementation EntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

//MARK: Actions
- (IBAction)saveButtonTapped:(UIBarButtonItem*)sender {
    if (self.entry) {
        [[EntryController sharedInstance] updateEntry:self.entry title:self.entryTitleLabel.text bodyText:self.entryDetailTextView.text];
    } else {
        [[EntryController sharedInstance] addEntryWithTitle:self.entryTitleLabel.text bodyText:self.entryDetailTextView.text];
    }
    [self.navigationController popViewControllerAnimated:true];
}
- (IBAction)clearButtonTapped:(id)sender {
    self.entryTitleLabel.text = @"";
    self.entryDetailTextView.text = @"";
}

@end
