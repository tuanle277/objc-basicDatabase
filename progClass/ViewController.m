#import "ViewController.h"
#import "Customer.h"
#import "tableCell.h"
#import "tableCellData.h"

@interface ViewController ()

@end

@implementation ViewController {
    NSMutableArray *datas;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    datas = [[NSMutableArray alloc] initWithObjects: [[Customer alloc] initWithAll:@"Kevin" andMail:@"Kevin.gmail.com" andAge:18 andPhone:@"192318239"], nil];
    

    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section

{
    return [datas count];
}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//   return 80;
//}

- (tableCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    tableCell *cell = [tableView dequeueReusableCellWithIdentifier: tableCell.identifier];
    Customer *data = datas[indexPath.row];
    NSLog(@"%@", data.username);
    [cell setUp:data withIndexPath:indexPath];
    NSLog(@"%@", cell.nameLabel.text);
    cell.delegate = self;
    return cell;
}


- (IBAction)addItemBtn:(UIButton *)sender {
//    if (![self.nameTxtFld.text isEqualToString: @""] && ![self.mailTxtFld.text isEqualToString: @""])
//    {
//        NSString *newName = self.nameTxtFld.text;
//        NSString *newMail = self.mailTxtFld.text;
//        [infos addObject: (tableCellData *) newCell];
//        NSString *e1 = @"";
//        NSString *e2 = @"";
//        self.nameTxtFld.text = e1;
//        self.mailTxtFld.text = e2;
//        [self.tableView reloadData];
//    }
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [datas removeObjectAtIndex:indexPath.row];
        [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}

- (IBAction)changeBtn:(UIButton *)sender {
    
}
@end
