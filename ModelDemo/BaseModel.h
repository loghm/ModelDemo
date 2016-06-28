//
//  BaseModel.h
//  ModelDemo
//
//  Created by 黄明族 on 16/6/28.
//  Copyright © 2016年 黄明族. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseModel : NSObject

//将字典内的值赋给申明的相应属性，模型基类。
//对外公开一个工厂方法，以及一个初始化赋值方法。
- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)modelWithDict:(NSDictionary *)dict;

@end
