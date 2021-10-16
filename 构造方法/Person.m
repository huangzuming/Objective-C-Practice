//
//  Person.m
//  构造方法
//
//  Created by 黄念敏 on 2021/4/14.
//

#import "Person.h"
/**
 相同点：
 instancetype 和 id 都是指针，指向对象

 不同点：
 1
 id在编译的时候不能判断对象的真实类型，也就是说在编译器不做具体类型检查，运行时检查类型
 instancetype在编译的时候可以判断对象的真实类型
 2
 id可以用来定义变量，可以作为返回类型，可以作为形参类型；
 instancetype只适用于初始化方法和便利构造器的返回值类型

 */
@implementation Person

//这个构造方法方法不需要声明，父类中有
-(instancetype)init{
    if (self = [super init]) {
        _age = 0;
    }
    return  self;
}

//自定义构造方法：而且还可以自定义构造多个init方法
-(instancetype)initWithAge:(int)age{
    if (self = [super init]) {
        _age = age;
    }
    return  self;
}


/*
 注意点：
 
 1、init后面的with第一个字母必须大写
 2、属性名称和方法不能用new开头
 3、
  */

@end
