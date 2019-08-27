//
//  ZPPerson.m
//  copy关键字
//
//  Created by 赵鹏 on 2019/8/19.
//  Copyright © 2019 赵鹏. All rights reserved.
//

#import "ZPPerson.h"

@implementation ZPPerson

//系统对于data属性自动生成的set方法，这里只不过是写出来而已。
- (void)setData:(NSArray *)data
{
    if (_data != data)
    {
        [_data release];
        _data = [data copy];
    }
}

- (void)dealloc
{
    self.data = nil;
    
    [super dealloc];
}

@end
