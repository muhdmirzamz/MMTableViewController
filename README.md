##MMTableViewController##

This is a ```UITableViewController``` subclass that implements single cell selection in a ```UITableView```.

###How to implement###
**1st way**:
Implement ```- (id)initWithStyle:(UITableViewStyle)style;``` in the subclass. You can also override the ```- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;``` method. Initialize the subclass in ```AppDelegate``` or a previous view and you're good to go.

**2nd way**:
You can also override the ```- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;``` method. Initialize the subclass in ```AppDelegate``` or a previous view using ```- (id)initWithCellSettings: (NSString*)cell AndTableItems: (NSArray*)items;``` and you're good to go.

**3rd way**:
You can simply set the properties of the ```MMTableViewController``` in ```- (void)viewDidLoad``` and you're good to go.

Code is documented and you can learn from there too. Have fun! 
