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
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
}

@end

@implementation HomeViewController (DataSource)
- (HomeOptionsCellConfig *)p_getConfigForIndex:(long)index
{
    switch (index) {
        case 0:
            return [HomeOptionsCellConfig configWithTitle:@"Add Interviews" colorInHex:0x0];
            
        case 1:
            return [HomeOptionsCellConfig configWithTitle:@"See Interviews" colorInHex:0x0];
            
        case 2:
            return [HomeOptionsCellConfig configWithTitle:@"Applied Companies" colorInHex:0x0];
        
        case 3:
            return [HomeOptionsCellConfig configWithTitle:@"Denied Companies" colorInHex:0x0];
            
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
@end
