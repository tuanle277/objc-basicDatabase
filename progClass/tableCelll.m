#import "tableCelll.h"

@implementation tableCelll: NSObject

-(instancetype) initWithNameMail: (NSString *) name andMail: (NSString *) mail {
    self = [super init];
    self.name = name;
    self.mail = mail;
    return self;
}


@end
