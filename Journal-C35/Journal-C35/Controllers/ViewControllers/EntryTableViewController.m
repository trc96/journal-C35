//
//  EntryTableViewController.m
//  Journal-C35
//
//  Created by Todd Crandall on 8/10/20.
//  Copyright © 2020 Todd Crandall. All rights reserved.
//

#import "EntryTableViewController.h"
#import "EntryController.h"
#import "Entry.h"
#import "EntryDetailViewController.h"

@interface EntryTableViewController ()

@end

@implementation EntryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:true];
    [self.tableView reloadData];
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return EntryController.sharedInstance.entries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    Entry * entry = EntryController.sharedInstance.entries[indexPath.row];
    
    cell.textLabel.text = entry.title;
    NSDateFormatter * dateformatter = [[NSDateFormatter alloc] init];
    dateformatter.dateFormat = @"HH:mm";
    NSDate * date = entry.timeStamp;
    NSString * dateString = [dateformatter stringFromDate:date];
    cell.detailTextLabel.text = dateString;
    
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        Entry * entry = EntryController.sharedInstance.entries[indexPath.row];
        [EntryController.sharedInstance removeEntry:entry];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //IIDOO
    //Identifier
    if ([segue.identifier isEqualToString:@"toDetailVC"]) {
        //Index
        NSIndexPath * indexPath = [self.tableView indexPathForCell:sender];
        //Destination
        EntryDetailViewController * destinationVC = segue.destinationViewController;
        //Object to send
        Entry * entry = [EntryController sharedInstance].entries[indexPath.row];
        //Send object
        destinationVC.entry = entry;
    }
}

@end
