#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface tableCelll : NSObject

@property NSString *name;
@property NSString *mail;

-(instancetype) initWithNameMail: (NSString *) name andMail: (NSString *) mail;

@end

NS_ASSUME_NONNULL_END
