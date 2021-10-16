//
//  main.m
//  SEL方法
//
//  Created by 黄念敏 on 2021/4/14.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Car.h"
int main(int argc, const char * argv[]) {

    //SET是对方法的包装，将方法包装成一个sel类型的数据，去寻找对应的那个方法的地址，找到方法地址就能找到方法调用方法了
    其中@selector（）是取类方法的编号，取出的结果是SEL类型。
    SEL：类成员方法的指针，
    /*
     与函数指针的区别：
     SEL 类成员方法的指针
     可以理解@selector()就是取类方法的编号
     他的行为基本可以等同C语言的中函数指针
     只不过C语言中，函数指针直接保存了方法的地址，而SEL只是方法的编号。
     而Object-C的类不能直接应用函数指针
     这样只能做一个@selector语法来取.
     */
    
    Person *p = [[Person alloc] init];
    
    
    //SEL的用途一 : 配合对象/类检测对象/类中是否实现了买某一个方法
   
    SEL sel = @selector(setName:); //把实例对象方法setName：方法包装成为一个SEL类型的变量
    
    //respondsToSelector: 判断对象是否实现sel包装里的方法,并返回0和1
    //注意：如果是对象掉用该方法就会判断对象方法，如果是类对象调用该方法就会判断类方法
    BOOL isRealize = [p respondsToSelector:sel];
    NSLog(@"setName: isRealize = %d",isRealize);
    
    //包装类对象方法，并检查是否被实现
    SEL selDome = @selector(dome); //把类对象方法dome 方法包装成为一个SEL类型的变量
    isRealize = [Person respondsToSelector:selDome];
    NSLog(@"dome isRealize = %d",isRealize);
    
    
    //SEL的用途二 : 配合对象/类调用该对象/类的某一个方法
    SEL selTest = @selector(test);
    [p performSelector:selTest];//会出现警告：PerformSelector可能会导致泄漏，因为它的选择器是未知的
    
    [Person performSelector:selDome];//调用类对象方法
    
    //调用带一个参数的对象方法（类对象也可以）
    SEL selTest1 = @selector(testValue1:);
    [p performSelector:selTest1 withObject:@"value"];//会出现警告：PerformSelector可能会导致泄漏，因为它的选择器是未知的
    
    //调用带两个参数的对方方法（最多两个参数，类对象也如此）
    SEL selTest2 = @selector(testValue1:andValue2:);
    [p performSelector:selTest2 withObject:@"value1" withObject:@"value2"];//会出现警告：PerformSelector可能会导致泄漏，因为它的选择器是未知的
    //注意：withObject： 传入的类型必须是对象类型
    
    //SEL的用途三 : 配合对象,作为方法的形参
    Car *c = [[Car alloc] init];
    SEL car = @selector(openCar);
    [p testObj:c andSel:car];
    
    return 0;
}
