//
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface tableCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *mailLabel;
@property int *id;
- (IBAction)deleteBtn:(UIButton *)sender;

- (id) initWithNameEmail: (NSString *) name andMail: (NSString *) mail;

@end

NS_ASSUME_NONNULL_END
