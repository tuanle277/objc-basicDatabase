#import "ViewController.h"
#import "Customer.h"
#import "tableCell.h"
#import "tableCelll.h"

@interface ViewController ()

@end

@implementation ViewController {
    NSMutableArray <tableCelll *> *infos;
    NSMutableArray *dummy;
    NSArray *headers;
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    Customer *cus1 = [[Customer alloc] initWithAll: @"K" andMail: @"K.gmail.com" andAge: 18 andPhone:@"8237482374"];
//    Customer *cus2 = [[Customer alloc] initWithAll: @"T" andMail: @"T.gmail.com" andAge: 28 andPhone:@"0808980806"];
    
//    [cus1 printInfo];
//    [cus2 printInfo];
    
    infos = [[NSMutableArray alloc] initWithObjects:[[tableCelll alloc] initWithNameMail:@"Name" andMail:@"Email"], nil];
    
    dummy = [NSMutableArray arrayWithObjects: @"a", @"b", @"c", @"d", @"e", nil];
    
    headers = @[@"Name", @"Mail"];
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section

{
    return [infos count];
}

- (tableCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{

    static NSString *simpleTableIdentifier = @"tableCell";
    tableCell *cell = (tableCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];


    if (cell == nil) {
        cell = [[tableCell alloc] initWithNameEmail: @"Name" andMail: @"Email"];
    }

    cell.nameLabel.text = [infos objectAtIndex: indexPath.row].name;
    cell.mailLabel.text = [infos objectAtIndex: indexPath.row].mail;
    cell.id = (int*) indexPath.row;
    return cell;

}


- (IBAction)addItemBtn:(UIButton *)sender {
    if (![self.nameTxtFld.text isEqualToString: @""] && ![self.mailTxtFld.text isEqualToString: @""])
    {
        NSString *newName = self.nameTxtFld.text;
        NSString *newMail = self.mailTxtFld.text;
        tableCelll *newCell = [[tableCelll alloc] initWithNameMail:newName andMail:newMail];
        [infos addObject: (tableCelll *) newCell];
    //    NSLog (@"debug button %@", [infos lastObject].name);
    //    NSLog (@"number of element in array is %lu", [infos count]);
        NSString *e1 = @"";
        NSString *e2 = @"";
        self.nameTxtFld.text = e1;
        self.mailTxtFld.text = e2;
        [self.tableView reloadData];
    }
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [infos removeObjectAtIndex:indexPath.row];
        [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}

- (IBAction)changeBtn:(UIButton *)sender {
    
}
@end
