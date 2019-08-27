//
//  ViewController.m
//  copy关键字
//
//  Created by 赵鹏 on 2019/8/19.
//  Copyright © 2019 赵鹏. All rights reserved.
//

/**
 为了营造MRC环境，先要在TARGETS中的Build Settings中把ARC由YES改为NO。
 */
#import "ViewController.h"
#import "ZPPerson.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    ZPPerson *person = [[ZPPerson alloc] init];
    
    //因为是用"copy"关键字来修饰的属性data，所以这句代码就相当于给不可变数组做copy操作，得到的也是一个不可变数组，是浅拷贝。
    person.data = [NSArray arrayWithObjects:@"jack", @"rose", nil];
}


@end
