//
//  EntryController.m
//  Journal-C35
//
//  Created by Todd Crandall on 8/10/20.
//  Copyright © 2020 Todd Crandall. All rights reserved.
//

#import "EntryController.h"

@implementation EntryController

+(EntryController *)sharedInstance {
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [EntryController new];
    });
    return sharedInstance;
}

- (instancetype) init
{
    self = [super init];
    if (self) {
        _entries = [NSMutableArray new];
    }
    return self;
}

- (void)addEntryWithTitle:(NSString *)title bodyText:(NSString *)bodyText
{
    Entry * newEntry = [[Entry alloc] initWithTitle:title bodyText:bodyText];
    [_entries addObject:newEntry];
}

- (void)removeEntry:(Entry *)entry
{
    [_entries removeObject:entry];
}

- (void)updateEntry:(Entry *)entry title:(NSString *)title bodyText:(NSString *)bodyText
{
    entry.title = title;
    entry.bodyText = bodyText;
    entry.timeStamp = [NSDate date];
}

@end
