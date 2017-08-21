//
//  QuestionsViewController.m
//  
//
//  Created by Chan Hee Park on 8/20/17.
//
//

#import "QuestionsViewController.h"
#import "RCQuestionSet.h"
#import "QuestionNode.h"
@interface QuestionsViewController () <ASPagerDataSource, ASPagerDelegate>
@property (nonatomic, strong) ASPagerNode *pagerNode;
@property (nonatomic, strong) RCQuestionSet *questionSet;
@end

@implementation QuestionsViewController


#pragma mark - Initialization

- (id)initWithQuestionSet:(RCQuestionSet *)set
{
    if (!(self = [super init])) return nil;
    
    self.questionSet = set;
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


#pragma mark - Data Source

- (NSInteger)numberOfPagesInPagerNode:(ASPagerNode *)pagerNode
{
    return [self.questionSet numberOfQuestions];
}

- (ASCellNodeBlock)pagerNode:(ASPagerNode *)pagerNode nodeBlockAtIndex:(NSInteger)index
{
    ASCellNodeBlock block = ^{
        ASCellNode *node = [[ASCellNode alloc]init];
        return node;
        
    };
    return block;
}


@end
