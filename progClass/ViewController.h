#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

- (IBAction)addItemBtn:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UITextField *nameTxtFld;
@property (weak, nonatomic) IBOutlet UITextField *ageTxtFld;
@property (weak, nonatomic) IBOutlet UITextField *mailTxtFld;
@property (weak, nonatomic) IBOutlet UITextField *phoneTxtFld;

@end

