//
//  FirstModel.m
//  ModelDemo
//
//  Created by 黄明族 on 16/6/28.
//  Copyright © 2016年 黄明族. All rights reserved.
//

#import "FirstModel.h"

@implementation FirstModel

//模型对象的名称要完全一致
- (instancetype)initWithDict:(NSDictionary *)dict {
    self = [super initWithDict:dict];
    if (self) {
        self.name = dict[@"name"];
        self.address = dict[@"address"];
        self.phoneNumber = dict[@"phoneNumber"];
        self.defaultAddress = dict[@"defaultAddress"];
        self.addressDetail = dict[@"addressDetail"];
        self.num = dict[@"num"];
    }
    return self;
}

@end
