//
//  Person.m
//  new方法
//
//  Created by 黄念敏 on 2021/4/14.
//

#import "Person.h"

@implementation Person


//重写init方法对属性就是自定义初始化
- (instancetype)init {
    if (self = [super init]) {
        _name = @"hzm";
        
    }
    return self;
}
//-(NSString *)description{
//    return [NSString stringWithFormat:@"name = %@",_name];
//}





@end
