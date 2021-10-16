//
//  Person.m
//  Property
//
//  Created by 黄念敏 on 2021/4/28.
//

#import "Person.h"

@implementation Person
#pragma  mark - @synthesize
//@synthesize是编译器特性，实际就是自动生成geting方法和setting方法的实现，在Xcode4.4之前才使用
//例子：@synthesize weight = _name;
//weight ： 编译器会到.h文件寻找weigth的声明，并生成生成geting方法和setting方法 ，如果没有对应带下划线的成员变量，会自动生成并赋值
// = _name : 会额外把值赋给属性_name

//注意：@synthesize平常配合大括号的成员变量使用，现在这里_weight01就是一个成员变量
@synthesize weight = _weight01;
@synthesize heigth;


-(void)setWage:(int)wage{
    _wage  = wage;
    NSLog(@"重写了setWage方法");
}
@end
