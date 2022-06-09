#import "Customer.h"

@implementation Customer

-(instancetype) initWithAll: (NSString *) newName andMail: (NSString *) newMail andAge: (int) newAge andPhone: (NSString *) newPhone{
    self = [super init];
    self.username = newName;
    self.age = newAge;
    self.email = newMail;
    self.phone = newPhone;
//    self.profile = image;
    return self;
}



@end
