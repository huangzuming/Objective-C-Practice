//
//  main.m
//  动态类型
//
//  Created by 黄念敏 on 2021/4/14.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {

    /*

     静态数据类型： 默认情况下所有的数据类型都是静态数据类型
     特点：编译的时候就知道该类型的属性和方法
     
     动态属性类型：编译的时候编译器不知道变量的真实类型，只有在运行的时候知道变量的真实类型
     特点：如果访问了不属于动态数据类型的属性和方法，编译器不会报错
     
     id ： 是一种数据类型 ，并且是动态数据类型
     id 是万能指针 id 实际就是 NSObject *  但是它是动态数据类型，而NSObject * 是静态数据类型
     
     特点：
     1、通过静态数据类型定义变量，不能调用子类特有的方法
     2、通过动态数据类型定义变量，可以调用子类特有的方法
     3、通过静态数据类型定义的变量，可以调用私有的方法
     
     弊端：由于动态数据类型可以调用任意方法，所以可能调用到不属于自己的方法，而编译的时候不报错，运行的时候才报错
     
     运用场景：用于多态，简化代码
     
     用法改良：在id调用方法的时候先进行对象前，判断当前变量是否能够调用该方法
     **/
    
    Person *p =    [Person new];
    [p jiankao];
    NSLog(@"");
    
    //静态数据类型
    Person *s =    [Student new];
    [s jiankao];
    //[s dushu]; //编译无法通过，即使s是student也无法调用自己特有的方法
    NSLog(@"");
    
    //动态数据类型
    id s1 =[Student new];
    [s1 jiankao];
    [s1 dushu]; //编译和运行都不报错
    
    NSLog(@"");
    //用法改良01：
    
//    id s2 =[Student new];
//    if ( [s2 isKindOfClass:[Student class]]) {
//        //isKindOfClass: 判断指定对象是否是某一个类，或者某一个类的子类
//        [s2 jiankao];
//        [s2 dushu]; //编译和运行都不报错
//    }
    
    //用法改良02：
    id s2 = [Student new];
    if ( [s2  isMemberOfClass:[Student class]]) {
        //isMemberOfClass: 判断指定对象是否是当前制定的类的实例
        [s2 jiankao];
        [s2 dushu]; //编译和运行都不报错
    }
    
    return 0;
}
