//
//  EntryDetailViewController.h
//  Journal-C35
//
//  Created by Todd Crandall on 8/10/20.
//  Copyright © 2020 Todd Crandall. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryDetailViewController : UIViewController

@property (nonatomic, strong)Entry * entry;

@end

NS_ASSUME_NONNULL_END
