//
//  QuestionsViewController.m
//  
//
//  Created by Chan Hee Park on 8/20/17.
//
//

#import "QuestionsViewController.h"


@interface QuestionsViewController () <ASPagerDataSource, ASPagerDelegate>
@property (nonatomic, strong) ASPagerNode *pagerNode;
@end

@implementation QuestionsViewController


#pragma mark - Initialization

- (id)initWithPagerNode:(ASPagerNode *)pager
{
    if (!(self = [super init])) return nil;
    self.pagerNode = pager;
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


#pragma mark - Data Source

- (NSInteger)numberOfPagesInPagerNode:(ASPagerNode *)pagerNode
{
    return 3;
}

- (ASCellNodeBlock)pagerNode:(ASPagerNode *)pagerNode nodeBlockAtIndex:(NSInteger)index
{
    return nil;
}


@end
