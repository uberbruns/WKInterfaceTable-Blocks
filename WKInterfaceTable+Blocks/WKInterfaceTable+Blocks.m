//
//  WKInterfaceTable+Blocks.m
//  watchmen
//
//  Created by Karsten Bruns on 29/11/14.
//  Copyright (c) 2014 bruns.me. All rights reserved.
//

#import "WKInterfaceTable+Blocks.h"

@implementation WKInterfaceTable (Blocks)

- (void)addRowWithType:(NSString *)rowType withConfigurationHandler:(void (^)(id rowController))configurationHandler
{
    [self insertRowsAtIndexes:[NSIndexSet indexSetWithIndex:self.numberOfRows] withRowType:rowType];
    id rowController = [self rowControllerAtIndex:self.numberOfRows-1];
    if (configurationHandler) {
        configurationHandler(rowController);
    }
}


- (void)addRowsWithType:(NSString *)rowType numberOfRows:(NSUInteger)numberOfRows withConfigurationHandler:(void (^)(id rowController, NSUInteger index))configurationHandler
{
    NSUInteger currentNumberOfRows = self.numberOfRows;
    [self insertRowsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(currentNumberOfRows, numberOfRows)] withRowType:rowType];
    if (configurationHandler) {
        for (NSUInteger i = 0; i < numberOfRows; i++) {
            id rowController = [self rowControllerAtIndex:currentNumberOfRows + i];
            configurationHandler(rowController, i);
        }
    }
}


- (void)addRowsWithType:(NSString *)rowType objects:(NSArray *)objects withConfigurationHandler:(void (^)(id rowController, id object))configurationHandler
{
    NSUInteger currentNumberOfRows = self.numberOfRows;
    [self insertRowsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(currentNumberOfRows, objects.count)] withRowType:rowType];
    if (configurationHandler) {
        for (NSUInteger i = 0; i < objects.count; i++) {
            id object = objects[i];
            id rowController = [self rowControllerAtIndex:currentNumberOfRows + i];
            configurationHandler(rowController, object);
        }
    }
}


- (void)removeAllRows
{
    [self setRowTypes:@[]];
}


@end