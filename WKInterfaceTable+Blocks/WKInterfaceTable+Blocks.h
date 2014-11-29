//
//  WKInterfaceTable+Blocks.h
//  watchmen
//
//  Created by Karsten Bruns on 29/11/14.
//  Copyright (c) 2014 bruns.me. All rights reserved.
//

#import <WatchKit/WatchKit.h>

@interface WKInterfaceTable (Blocks)

- (void)addRowWithType:(NSString *)rowType withConfigurationHandler:(void (^)(id rowController))configurationHandler;
- (void)addRowsWithType:(NSString *)rowType numberOfRows:(NSUInteger)numberOfRows withConfigurationHandler:(void (^)(id rowController, NSUInteger index))configurationHandler;
- (void)addRowsWithType:(NSString *)rowType objects:(NSArray *)objects withConfigurationHandler:(void (^)(id rowController, id object))configurationHandler;

- (void)removeAllRows;

@end