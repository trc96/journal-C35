//
//  EntryController.h
//  Journal-C35
//
//  Created by Todd Crandall on 8/10/20.
//  Copyright © 2020 Todd Crandall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryController : NSObject

//MARK: sharedInstance
+ (instancetype)sharedInstance;

//MARK: Source of Truth
@property (nonatomic, strong) NSMutableArray * entries;

//MARK: CRUD
- (void)addEntryWithTitle: (NSString *)title
                 bodyText:(NSString *)bodyText;

- (void)removeEntry:(Entry *)entry;

- (void)updateEntry:(Entry *)entry
              title:(NSString *)title
           bodyText:(NSString *)bodyText;

@end

NS_ASSUME_NONNULL_END
