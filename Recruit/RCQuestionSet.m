#import "RCQuestionSet.h"
@interface RCQuestionSet ()
@property (nonatomic, copy) NSMutableArray *questions;
@end
@implementation RCQuestionSet
- (id)initWithQuestionSet:(NSArray *)questions
{
    if (self = [super init])
    {
        self.questions = [questions mutableCopy];
    }
    return self;
}

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
