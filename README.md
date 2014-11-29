WKInterfaceTable+Blocks
=======================

Adds a block-based API to WKInterfaceTable 

```objective-c

[self.deviceTable removeAllRows];

NSArray *content = @[@"Foo", @"Bar"];
[self.table addRowsWithType:@"MyRow" objects:content withConfigurationHandler:^(DeviceRow *rowController, id object) {
	// Configure Row Controller
	rowController.title = object;
}];

[self.table addRowWithType:@"MyRow" withConfigurationHandler:^(id rowController) {
	// Configure Row Controller
	// ...
}];

[self.table addRowsWithType:@"MyRow" numberOfRows:5 withConfigurationHandler:^(id rowController, NSUInteger index) {
	// Configure Row Controller
	// ...
}];


```
