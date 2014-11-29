//
//  WKInterfaceTable+Blocks.h
//  watchmen
//
//  Created by Karsten Bruns on 29/11/14.
//  Copyright (c) 2014 bruns.me. All rights reserved.
//

#import <WatchKit/WatchKit.h>

@interface WKInterfaceTable (Blocks)

- (void)addRowWithType:(NSString *)rowType configurationHandler:(void (^)(id rowController))configurationHandler;
- (void)addRowsWithType:(NSString *)rowType numberOfRows:(NSUInteger)numberOfRows configurationHandler:(void (^)(id rowController, NSUInteger index))configurationHandler;
- (void)addRowsWithType:(NSString *)rowType objects:(NSArray *)objects configurationHandler:(void (^)(id rowController, id object))configurationHandler;

- (void)removeAllRows;

@end