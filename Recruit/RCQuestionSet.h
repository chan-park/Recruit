//
//  RCQuestionSet.h
//  Recruit
//
//  Created by Chan Hee Park on 8/21/17.
//  Copyright © 2017 Chan Hee Park. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RCQuestionSet : NSObject
@property (nonatomic, readonly) NSUInteger numberOfQuestions;
- (id)initWithQuestionSet:(NSArray *)questions;
- (void)addQuestion:(NSString *)q;
- (NSString *)questionAtIndex:(NSUInteger)index;
- (NSArray *)questions;
@end
