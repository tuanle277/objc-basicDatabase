#import "Customer.h"

@implementation Customer

@synthesize username = _username;
@synthesize email = _email;
@synthesize age = _age;
@synthesize phone = _phone;

-(instancetype) initWithAll: (NSString *) newName andMail: (NSString *) newMail andAge: (int *) newAge andPhone: (NSString *) newPhone {
    self = [super init];
    self.username = newName;
    self.age = newAge;
    self.email = newMail;
    self.phone = newPhone;
    return self;
}
- (void) printInfo {
    NSLog (@"username: %@, age: %d, email: %@, phone: %@", _username, _age, _email, _phone);
}

@end
