#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Customer : NSObject
@property NSString *username;
@property NSString *email;
@property int age;
//@property NSString *profile;
@property NSString *phone;

-(instancetype) initWithAll: (NSString *) newName andMail: (NSString *) newMail andAge: (int) newAge andPhone: (NSString *) newPhone;
@end

NS_ASSUME_NONNULL_END
