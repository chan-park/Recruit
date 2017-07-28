
#import <Foundation/Foundation.h>
@class RCInterview;
typedef NS_ENUM(NSUInteger, RCCompanyApplicationStatus) {
    RCCompanyApplicationStatusNotSelected,
    RCCompanyApplicationStatusInProgress,   /* when you are waiting for email */
    RCCompanyApplicationStatusSelected
};

@interface RCCompany : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSDate *appliedDate;
@property (nonatomic, strong) RCInterview *interview;
@property (nonatomic) RCCompanyApplicationStatus applicationStatus;

@end
