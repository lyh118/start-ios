//
//  main.m
//  RandomItems
//
//  Created by N3962 on 2015. 3. 25..
//  Copyright (c) 2015년 N3962. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 뮤터블 배열 객체를 만들고 items 변수에 그 주소를 저장한다
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        [items insertObject:@"Zero" atIndex:0];
        
        for (NSString *item in items) {
            NSLog(@"%@", item);
        }
        
        // #1.클래스 초기화
        BNRItem *item = [[BNRItem alloc] init];
        // Setter
        [item setItemName:@"Red Sofa"];
        [item setSerialNumber:@"A1B2C"];
        [item setValueInDollars:100];
        item.valueInDollars = 150; //점표기법
        
        NSLog(@"%@ %@ %@ %d", [item itemName], [item dateCreated],
              item.serialNumber, item.valueInDollars);
        // description 호출
        NSLog(@"%@", item);
        
        items = nil;
        
        
        // #2.초기화 메소드 사용
        BNRItem *item2 = [[BNRItem alloc] initWithItemName:@"Item Name"
                                            valueInDollars:100
                                              serialNumber:@"Item Serial"];
        NSLog(@"ITEM2=%@", item2);
        
        
        // #3.클래스 메소드 사용
        NSMutableArray *items2 = [[NSMutableArray alloc] init];
        for (int i=0; i<5; i++) {
            BNRItem *item2 = [BNRItem randomItem];
            [items2 addObject:item2];
        }
        
        for (NSString *item in items2) {
            NSLog(@"%@", item);
        }
        
        
        // #4.금메달 과제
        NSLog(@"======= #4.금메달 과제 ======");
        BNRContainer *container = [[BNRContainer alloc] init];
        [container setSubitems:item2];
        
        // Array 안에 BNRItem 객체인데 왜 NSString 으로 받나요??
        for (NSString *item3 in container.subitems) {
            NSLog(@"%@", item3);
        }
        
    }
    return 0;
}
