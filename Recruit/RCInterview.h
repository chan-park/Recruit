//
//  RCInterview.h
//  Recruit
//
//  Created by Chan Hee Park on 7/28/17.
//  Copyright © 2017 Chan Hee Park. All rights reserved.
//

#import <Foundation/Foundation.h>
@class RCCompany;
@class RCInterviewProcessManager;
@class RCEmployerContact;

@interface RCInterview : NSObject
// Company
@property (nonatomic, strong) RCCompany *company;
// Interview process
@property (nonatomic, strong) RCInterviewProcessManager *ipm;
// Contact
@property (nonatomic, strong) RCEmployerContact *employerContact;
@end
