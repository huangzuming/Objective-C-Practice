//
//  main.m
//  NSValue
//
//  Created by 黄念敏 on 2021/4/26.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
 
    
    //自定义结构体
    typedef struct  {
        int age;
        double height;
    }Person;
    
    /*
     NSValue：
     1、NSValue是NSNumber的父类
     2、NSNumber只能把基本数据类型中的数字类型转换为对象类型，无法把结构体、枚举之类的数据类型转换为对象类
     3、NSValue就能把结构体的数据类型转换为对象类

     */
    
    //NSValue就能把结构体的数据类型转换为对象类，分为两中情况：
    //情况一（oc自带的结构体转换为NSValue类型）
    CGPoint point = NSMakePoint(100, 200);
    NSValue *value01 = [NSValue valueWithPoint:point];
    NSLog(@"value01 = %@",value01);
    
    //情况二（oc自定义的结构体转换为NSValue类型）
    Person p = {100,170.0};
    //valueWithBytes:传入结构体变量的地址
    //objCType：传入结构体的类型地址（这里使用@encode(type)指令对结构体类型进行编码）
    NSValue *value02 = [NSValue valueWithBytes:&p objCType:@encode(Person)];
    NSLog(@"value02 = %@",value02);
    //打印：value02 = {length = 16, bytes = 0x64000000000000000000000000406540}
    
    //从NSValue类型变量中获取自定义结构体类型的数据
    Person pp;
    //getValue:传入接受自定义结构体的变量的地址，用于接收结构体
    [value02 getValue:&pp];
    
    NSLog(@"age = %i , height = %f ",pp.age,pp.height);
    
    
    /*
     知识：
     iOS中提供了一个叫做@encode的指令，可以将具体的类型表示成字符串编码。
     @encode实际上是编译器指令其中的一种。
     @encode能够返回一个Objective-C 类型编码(Objective-C Type Encodings)。
     @encode是一种编译器内部表示的字符串，方便识别，类似于 ANSI C 的 typeof 操作。

     在Objective-C中，用@encode指令的方式来表示，可以方便Runtime内部利用类型编码帮助加快消息分发。。

     */
    return 0;
}
