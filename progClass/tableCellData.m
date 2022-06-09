#import "tableCellData.h"

@implementation tableCellData: NSObject

-(instancetype) initWithNameMail: (NSString *) name andMail: (NSString *) mail {
    self = [super init];
    self.name = name;
    self.mail = mail;
    return self;
}


@end
