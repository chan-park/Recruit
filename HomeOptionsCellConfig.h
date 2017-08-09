//
//  HomeOptionsCellConfig.h
//  Recruit
//
//  Created by Chan Hee Park on 8/9/17.
//  Copyright © 2017 Chan Hee Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface HomeOptionsCellConfig : NSObject
@property (nonatomic, assign) NSUInteger hexVal;
@property (nonatomic, strong) NSString *title;
+ (HomeOptionsCellConfig *)configWithTitle:(NSString *)title
                                colorInHex:(NSUInteger)hexVal;
@end
