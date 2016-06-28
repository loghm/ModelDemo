//
//  FirstModel.h
//  ModelDemo
//
//  Created by 黄明族 on 16/6/28.
//  Copyright © 2016年 黄明族. All rights reserved.
//

#import "BaseModel.h"

@interface FirstModel : BaseModel

@property (nonatomic,copy)NSString *name;//名称
@property (nonatomic,copy)NSString *address;//地址
@property (nonatomic,copy)NSString *phoneNumber;//电话号码
@property (nonatomic,copy)NSString *defaultAddress;//默认地址

@property (nonatomic,copy)NSString *addressDetail;//详细地址
@property (nonatomic,copy)NSString *num;//邮编

@end
