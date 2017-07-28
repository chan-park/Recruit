//
//  HomeViewController.m
//  Recruit
//
//  Created by Chan Hee Park on 7/28/17.
//  Copyright © 2017 Chan Hee Park. All rights reserved.
//

#import "HomeViewController.h"
#import <AsyncDisplayKit/AsyncDisplayKit.h>

@interface HomeViewController ()
@property (nonatomic, strong) ASTableNode *tableNode;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
}

@end
