#import "tableCell.h"
#import "Customer.h"

@implementation tableCell

//like constructor but assign model's properties into cell's properties
-(void) setUp: (Customer* )customer withIndexPath: (NSIndexPath *) indexPath {
    self.nameLabel.text = [NSString stringWithFormat: @"Name: %@", customer.username];
    self.mailLabel.text = [NSString stringWithFormat: @"Name: %@", customer.email];
    self.ageLabel.text = [NSString stringWithFormat: @"Name: %d", customer.age];
    self.phoneLabel.text = [NSString stringWithFormat: @"Phone number: %@", customer.phone];
//    self.image.image = [UIImage imageNamed: customer.profile];
}

+(NSString *)identifier {
    return @"customerCell";
}

@end
