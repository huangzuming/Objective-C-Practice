//
//  Person.m
//  构造方法
//
//  Created by 黄念敏 on 2021/4/14.
//

#import "Person.h"

@implementation Person
+ (instancetype)person{
    return [[self alloc] init];
}


+ (instancetype)personWithName:(NSString*)name{
    return [[self alloc] initWithName:name];
}
- (instancetype)initWithName:(NSString*)name{
    if (self = [super init]) {
        _name = name;
    }
    return self;
}


-(NSString *)description{
    return [NSString stringWithFormat:@"name = %@ ",_name];
}

#pragma  mark - 类被加载的过程

//程序启动，类被加载到内存的代码区时会被调用（仅被调用一次）
//注意：在继承里会先调用父类的load的方法再调用子类的load方法
+(void)load{
    NSLog(@"person load 的方法被调用");
}

//当类第一次被使用的时候会被调用（创建类对象的时候，而且仅被调用一次）
//注意：在继承里会先调用父类的initialize的方法再调用子类的initialize方法
+(void)initialize{
    NSLog(@"person initialize 的方法被调用");
}

@end
