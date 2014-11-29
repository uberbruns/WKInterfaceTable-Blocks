WKInterfaceTable+Blocks
=======================

Adds a block-based API to WKInterfaceTable 

```objective-c

[self.table removeAllRows];

NSArray *content = @[@"Foo", @"Bar"];
[self.table addRowsWithType:@"MyRow" objects:content configurationHandler:^(DeviceRow *rowController, id object) {
	// Configure Row Controller
	rowController.title = object;
}];

[self.table addRowWithType:@"MyRow" configurationHandler:^(id rowController) {
	// Configure Row Controller
	// ...
}];

[self.table addRowsWithType:@"MyRow" numberOfRows:5 configurationHandler:^(id rowController, NSUInteger index) {
	// Configure Row Controller
	// ...
}];


```
