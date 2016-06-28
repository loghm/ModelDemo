//
//  BaseModel.m
//  ModelDemo
//
//  Created by 黄明族 on 16/6/28.
//  Copyright © 2016年 黄明族. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel

- (instancetype)initWithDict:(NSDictionary *)dict {
    self = [super init];
    if (self) {
    }
    return self;
}
+ (instancetype)modelWithDict:(NSDictionary *)dict {
    return [[self alloc]initWithDict:dict];
}

@end
