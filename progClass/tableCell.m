#import "tableCell.h"
#import "ViewController.h"

@implementation tableCell
//@synthesize nameLabel = _nameLabel;
//@synthesize mailLabel = _mailLabel;

- (id) initWithNameEmail: (NSString *) name andMail: (NSString *) mail{
    self.nameLabel.text = name;
    self.mailLabel.text = mail;
    return self;
}

- (IBAction)deleteBtn:(UIButton *)sender {

}
@end
