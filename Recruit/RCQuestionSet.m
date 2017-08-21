#import "RCQuestionSet.h"
@interface RCQuestionSet ()
@property (nonatomic, strong) NSMutableArray *questions;
@end
@implementation RCQuestionSet
- (NSUInteger) getNumberOfQuestions
{
    return [_questions count];
}

- (void)addQuestion:(NSString *)q
{
    [_questions addObject:q];
}

- (NSString *)questionAtIndex:(NSUInteger)index
{
    return [self.questions objectAtIndex:index];
}

- (NSArray *)questions
{
    return self.questions;
}
@end
