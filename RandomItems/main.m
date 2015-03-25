//
//  main.m
//  RandomItems
//
//  Created by N3962 on 2015. 3. 25..
//  Copyright (c) 2015년 N3962. All rights reserved.
//

#import <Foundation/Foundation.h>

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
        
        items = nil;
    }
    return 0;
}
