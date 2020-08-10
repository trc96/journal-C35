//
//  Entry.h
//  Journal-C35
//
//  Created by Todd Crandall on 8/10/20.
//  Copyright © 2020 Todd Crandall. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Entry : NSObject

@property (nonatomic, copy) NSString * title;
@property (nonatomic, copy) NSString * bodyText;
@property (nonatomic, copy) NSDate * timeStamp;

- (instancetype) initWithTitle:(NSString *)title
                          bodyText:(NSString *)bodyText
                          timeStamp:(NSDate *)timeStamp;

- (instancetype) initWithTitle:(NSString *)title bodyText:(NSString *)bodyText;

@end

NS_ASSUME_NONNULL_END
