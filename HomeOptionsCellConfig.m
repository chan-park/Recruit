//
//  HomeOptionsCellConfig.m
//  Recruit
//
//  Created by Chan Hee Park on 8/9/17.
//  Copyright © 2017 Chan Hee Park. All rights reserved.
//

#import "HomeOptionsCellConfig.h"

@implementation HomeOptionsCellConfig

+ (HomeOptionsCellConfig *)configWithTitle:(NSString *)title
                                colorInHex:(NSUInteger)hexVal
{
    HomeOptionsCellConfig *config = [[HomeOptionsCellConfig alloc]init];
    config.hexVal = hexVal;
    config.title = title;
    return config;
}
@end
