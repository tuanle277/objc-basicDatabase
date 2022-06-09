#import "Customer.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol tableCellDelegate;

@interface tableCell:UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *mailLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *phoneLabel;

//@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (assign, nonatomic) id <tableCellDelegate> delegate;

-(void) setUp: (Customer *)customer withIndexPath: (nonnull NSIndexPath *) indexPath;
+ (NSString *)identifier;
@end

@protocol tableCellDelegate <NSObject>

-(void)didChoiceAccount: (tableCell *) cell withIndexPath: (NSIndexPath *) indexPath;

@end

NS_ASSUME_NONNULL_END
