//
//  Student.m
//  copy的内存关系
//
//  Created by 黄念敏 on 2021/4/27.
//

#import "Student.h"

@implementation Student
-(id)copyWithZone:(NSZone *)zone{
    //空间的开辟和父类特又的属性由父类进行
    id obj = [super copyWithZone:zone];
    //只对自己拥有的属性进行赋值
    [obj setHeight:_height];
    return obj;
}

-(id)mutableCopyWithZone:(NSZone *)zone{
    id obj = [super copyWithZone:zone];
    [obj setHeight:_height];
    return obj;
}

@end
