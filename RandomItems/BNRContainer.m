//
//  BNRContainer.m
//  RandomItems
//
//  Created by N3962 on 2015. 3. 27..
//  Copyright (c) 2015년 N3962. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

- (int)getPriceAll
{
    int allPrice = _price;
    
    NSMutableArray *items = _subitems;
    for (BNRItem *item in items) {
        allPrice += item.valueInDollars;
    }
    
    return allPrice;
}

- (instancetype) initWithSubitems: (NSString *)name
                    initWithPrice: (int)price
{
    self = [super init];
    
    if (self) {
        _containerName = name;
        _price = price;
        _subitems = [[NSMutableArray alloc] init];
    }
    return self;
}

- (instancetype)init
{
    return [self initWithSubitems:@"Gold_Container"
                    initWithPrice:100];
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

- (NSString *)description
{
    NSString *items;
    for (NSString *item in self.subitems) {
        NSLog(@"%@", item);
    }
    
    NSString *descriptionString =
    [[NSString alloc] initWithFormat:
            @"\n====== BNRContainer ======\nContainerName=%@\nContainerPrice=%d\nAllPrice=%d\nSubItems=%@",
            self.containerName,
            self.price,
            [self getPriceAll],
            self.subitems];
    
    return descriptionString;
}

@end
