//
//  RCInterviewProcessManager.h
//  Recruit
//
//  Created by Chan Hee Park on 7/28/17.
//  Copyright © 2017 Chan Hee Park. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSInteger, RCInterviewType) {
    RCInterviewTypePhoneScreen,
    RCInterviewTypeOnsite,
    RCInterviewVideoCall,
    RCInterviewCodingChallenge,
    RCInterviewMisc
};

@interface RCInterviewProcessManager : NSObject
@property (nonatomic) RCInterviewType currentInterview;
- (void)goNextStep;
@end
