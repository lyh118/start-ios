//
//  CHAP2.금메달과제
//
//  BNRContainer.h
//  RandomItems
//
//  Created by N3962 on 2015. 3. 27..
//  Copyright (c) 2015년 N3962. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSMutableArray *_subitems;
    NSString *_containerName;
    int _price;
}

- (void)setSubitems: (BNRItem *)subitems;
- (NSMutableArray *)subitems;

- (void)setContainerName: (NSString *)containerName;
- (NSString *)containerName;

- (void)setPrice: (int)price;
- (int)price;

@end
