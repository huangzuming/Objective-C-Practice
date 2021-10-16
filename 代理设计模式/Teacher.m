//
//  Teacher.m
//  代理设计模式
//
//  Created by 黄念敏 on 2021/4/22.
//

#import "Teacher.h"
//引入student类头文件，对协议的方法进行实现
#import "Student.h"

@implementation Teacher
-(void)studentUnderstandEnglish:(Student *)student{
    NSLog(@"我会英语");
}
@end
