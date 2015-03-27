//
//  BNRContainer.m
//  RandomItems
//
//  Created by N3962 on 2015. 3. 27..
//  Copyright (c) 2015년 N3962. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

- (instancetype) initWithSubitems
{
    self = [super init];
    
    if (self) {
        _subitems = [[NSMutableArray alloc] init];
    }
    return self;
}

- (instancetype)init
{
    return [self initWithSubitems];
}

- (void)setSubitems: (BNRItem *)subitems
{
    [_subitems addObject:subitems];
}
- (NSMutableArray *)subitems
{
    return _subitems;
}

- (void)setContainerName:(NSString *)containerName
{
    _containerName = containerName;
}
- (NSString *)containerName
{
    return _containerName;
}

- (void)setPrice:(int)price
{
    _price = price;
}
- (int)price
{
    return _price;
}

@end
