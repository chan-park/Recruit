//
//  HomeOptionsCellNode.m
//  Recruit
//
//  Created by Chan Hee Park on 8/9/17.
//  Copyright © 2017 Chan Hee Park. All rights reserved.
//

#import "HomeOptionsCellNode.h"
#import "UIColor+Hex.h"
@interface HomeOptionsCellNode ()
@property (nonatomic, strong) ASTextNode *titleNode;
@property (nonatomic, strong) ASImageNode *arrowNode;
@end
@implementation HomeOptionsCellNode
{
    NSString *_title;
}

- (id)initWithConfig:(HomeOptionsCellConfig *)config;
{
    if (!(self = [super init])) return nil;
    
    _title = config.title;
    self.backgroundColor = [UIColor colorWithHex:config.hexVal];
    
    _titleNode = [[ASTextNode alloc]init];
    NSDictionary *attributes = @{NSForegroundColorAttributeName:[UIColor whiteColor], NSFontAttributeName: [UIFont fontWithName:@"Courier"  size:13]};
    _titleNode.attributedText = [[NSAttributedString alloc]initWithString:_title attributes:attributes];
    
    _arrowNode = [[ASImageNode alloc]init];
    
    return self;
}


- (void)layout
{
    [super layout];
}

- (ASLayoutSpec *)layoutSpecThatFits:(ASSizeRange)constrainedSize
{
    ASStackLayoutSpec *horizontalLayoutSpec = [ASStackLayoutSpec horizontalStackLayoutSpec];
    ASLayoutSpec *spacer = [[ASLayoutSpec alloc]init];
    spacer.style.flexGrow = YES;
    horizontalLayoutSpec.children = @[self.titleNode, spacer, self.arrowNode];
    horizontalLayoutSpec.style.alignSelf = ASStackLayoutAlignSelfCenter;
    horizontalLayoutSpec.justifyContent = ASStackLayoutJustifyContentSpaceBetween;
    return horizontalLayoutSpec;
}
@end
