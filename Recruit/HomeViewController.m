//
//  HomeViewController.m
//  Recruit
//
//  Created by Chan Hee Park on 7/28/17.
//  Copyright © 2017 Chan Hee Park. All rights reserved.
//

#import "HomeViewController.h"
#import <AsyncDisplayKit/AsyncDisplayKit.h>
#import "HomeOptionsCellNode.h"
#import "HomeOptionsCellConfig.h"
@interface HomeViewController ()
@property (nonatomic, strong) ASTableNode *tableNode;
@end
@interface HomeViewController (Delegate) <ASTableDelegate>
@end

@interface HomeViewController (DataSource) <ASTableDataSource>
@end
@implementation HomeViewController
- (instancetype)init
{
    _tableNode = [[ASTableNode alloc]initWithStyle:UITableViewStylePlain];
    self = [super initWithNode:_tableNode];
    
    if (self)
    {
        _tableNode.dataSource = self;
        _tableNode.delegate = self;
        [self setTableStyle];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}


- (void)setTableStyle
{
    _tableNode.view.allowsSelection = NO;
    _tableNode.view.separatorStyle = UITableViewCellSeparatorStyleNone;
}

@end
@implementation HomeViewController (DataSource)
- (HomeOptionsCellConfig *)p_getConfigForIndex:(long)index
{
    switch (index) {
        case 0:
            return [HomeOptionsCellConfig configWithTitle:@"Add Interviews" colorInHex:0x00aedb];
            
        case 1:
            return [HomeOptionsCellConfig configWithTitle:@"See Interviews" colorInHex:0xa200ff];
            
        case 2:
            return [HomeOptionsCellConfig configWithTitle:@"Applied Companies" colorInHex:0xf47835];
        
        case 3:
            return [HomeOptionsCellConfig configWithTitle:@"Denied Companies" colorInHex:0x8ec127];
            
        default:
            return nil;
    }
}
- (ASCellNodeBlock)tableNode:(ASTableNode *)tableNode nodeBlockForRowAtIndexPath:(NSIndexPath *)indexPath
{
    HomeOptionsCellNode *cellNode = [[HomeOptionsCellNode alloc]initWithConfig:[self p_getConfigForIndex:indexPath.row]];
    
    
    return ^{
        return cellNode;
    };
}

- (NSInteger)numberOfSectionsInTableNode:(ASTableNode *)tableNode
{
    return 1;
}
- (NSInteger)tableNode:(ASTableNode *)tableNode numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

@end
@implementation HomeViewController (Delegate)

- (ASSizeRange)tableView:(ASTableView *)tableNode
constrainedSizeForRowAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGSize min = CGSizeMake(width, [UIScreen mainScreen].bounds.size.height/4);
    CGSize max = CGSizeMake(width, INFINITY);
    return ASSizeRangeMake(min, max);
}

@end
