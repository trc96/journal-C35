//
//  Entry.m
//  Journal-C35
//
//  Created by Todd Crandall on 8/10/20.
//  Copyright © 2020 Todd Crandall. All rights reserved.
//

#import "Entry.h"

@implementation Entry

- (instancetype) initWithTitle:(NSString *)title bodyText:(NSString *)bodyText timeStamp:(NSDate *)timeStamp
{
    self = [super init];
    if (self)
    {
        _title = title;
        _bodyText = bodyText;
        _timeStamp = timeStamp;
    }
    return self;
}

- (instancetype) initWithTitle:(NSString *)title bodyText:(NSString *)bodyText
{
    self = [self initWithTitle:title bodyText:bodyText timeStamp:[NSDate date]];
    
    return self;
}

@end
