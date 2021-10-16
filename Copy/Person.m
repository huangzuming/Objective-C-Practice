//
//  Person.m
//  copy的内存关系
//
//  Created by 黄念敏 on 2021/4/26.
//

#import "Person.h"

@implementation Person
//zone:系统传入的，处理堆内存的碎片的，不需要明白
-(id)copyWithZone:(NSZone *)zone{
    //1、创建副本对象
    id obj = [[self class] allocWithZone:zone];
    //2、对副本对象就行初始化
    [obj setAge:_age];
    [obj setName:_name];
    
    //3、返回副本
    return obj;
}

-(id)mutableCopyWithZone:(NSZone *)zone{
    id obj = [[self class] allocWithZone:zone];
    [obj setAge:_age];
    [obj setName:_name];
    return obj;
}

@end
