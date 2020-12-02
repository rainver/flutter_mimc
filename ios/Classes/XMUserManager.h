#import <Foundation/Foundation.h>
#import <MMCSDK/MCUser.h>

@interface XMUserManager : NSObject<parseTokenDelegate>

- (instancetype)init;
- (void)initStringToken:(NSString *)stringToken;
- (BOOL)userLogin;
- (BOOL)userLogout;
- (NSString *)getAppAccount;
- (void)setAppAccount:(NSString *)appAccount;
- (MCUser *)getUser;
- (NSString *)getAppId;
- (void)setUser:(MCUser *)user;
- (void)parseProxyServiceToken:(void(^)(NSData *data))callback;
+(NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString;
@end
