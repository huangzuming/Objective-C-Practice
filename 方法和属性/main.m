//
//  main.m
//  第一个OC类
//
//  Created by 黄念敏 on 2021/4/12.
//

#import <Foundation/Foundation.h>

//颜色枚举
typedef enum {
    kIPColorBlcak,
    kIPColorWhite,
    kIPColorTuHaoJin
}IPColor;

//生产日期结构体
typedef struct {
    int Year;
    int month;
    int day;
}Date;


//类声明
@interface Iphone : NSObject
//属性：1成员变量在大括号里，2属性名称前用_开头（规范）
{
    //默认情况下类的属性是受保护的,需要用@public修饰，公开属性
    @public
    float _model; //属性变量（也称为实例变量）
    int _cpu;
    double _size;
    IPColor _color;
    Date _date;//出产日期
}

//方法
//和c语言的函数一样，保存特定一段特定的功能代码

/*
 注意点：
 oc方法中（）是用来括住数据类型的 void也是一种数据类型
 - ：对像方法（只能是对象调用）
 + ：类方法（类调用）
 
 */

//这是一个返回值为空的对象方法
-(void)about;



//方法名称: loadMessage
-(char *)loadMessage;

//方法名称：signal:
-(void)signal:(int)number;

//方法名称：sendMessage::
-(void)sendMessage:(int)number :(char *)content;

//为了提高阅读性，oc还可以在参数增加一个标签，用来说明单前参数的含义，同时标签也是方法名称的一部分
//方法名称：sendMessageWithNumber:andContent:
-(void)sendMessageWithNumber:(int)number andContent:(char*)content;


//计算器（类方法）
/*
 + 开头的方法就是类型方法
 什么时候可以使用类方法？不需要用到属性的时候，而且能用就用，一般是工具方法
 */
+(int)sumWithNumber1:(int)v1 andNumber2:(int)v2;



-(void)showDate;

@end


//类的实现（名称一定要和声明一样）
@implementation Iphone

//方法的实现
-(void)about{
   
    NSString *name = NULL;
    switch (_color) {
        case 0:
            name = @"黑色";
            break;
        case 1:
            name = @"白色";
            break;
        case 2:
            name = @"土豪金";
            break;
        default:
            break;
    }
    
    
    //在类中可以直接用属性名称访问属性的值
    NSLog(@"本机信息： size = %f , cpu = %i color = %@",_size,_cpu,name);

}

-(char *)loadMessage{
    NSLog(@"我们家我做不了主");
    return "wife is god";
}

-(void)signal:(int)number{
    NSLog(@"打电话个给%i",number);
}

-(void)sendMessage:(int)number :(char *)content{
    NSLog(@"1发信息给%i 内容：%s",number,content);
}

-(void)sendMessageWithNumber:(int)number andContent:(char*)content{
    NSLog(@"2发信息给%i 内容：%s",number,content);
}


+(int)sumWithNumber1:(int)v1 andNumber2:(int)v2{
    return v1+v2;
}

-(void)showDate{
    NSLog(@"生产日期为%i年%i月%i日",_date.Year,_date.month,_date.day);
}
@end


int main(int argc, const char * argv[]) {
    
    //在oc创建对象必须发送消息（就是调用方法）
    //发送new消息会做的事情：1.创建对象并分配存储空间 2.初始化对象中的属性 3.返回对象的地址
     Iphone  *p =  [Iphone new];
    
    //如果一个指针指向了一个类对象的地址，就称这个指针为该类型的对象
    //OC中的类其实本质就是一个结构体，所以指针就是指向这个结构体
    
    //使用指针操作对象和操作结构体一样
    p->_size = 3.1;
    p-> _model =3213 ;
    
    (*p)._cpu = 1;
    (*p)._color = 1;
    NSLog(@"size = %f , cpu = %i",p->_size,(*p)._cpu);
    
    //*****方法调用
    //无返回值的对象对象方法
    [p about];
    
    //有返回值的对象方法
    char *c = [p loadMessage];
    NSLog(@" [p loadMessage] = %s",c);
    
    //无返回值有参数的对象方法
    [p signal:1319220];
    
    //无返回值有参数的对象方法
    [p sendMessage:123 :"love"];
    [p sendMessageWithNumber:321 andContent:"momo"];
    
    
    //类方法调用（用类名调用）
    NSLog(@" 100 +200 = %i", [Iphone sumWithNumber1:100 andNumber2:200]);
    
    
    
    //结构体作为对象的属性注意点
    //如果是一次性初始化需要强制类型转换
    
    p->_date =(Date) {1995,12,6};
    [p showDate];
    
    //单独初始化就不需要强制类型转换
    p->_date.Year = 2021;
    [p showDate];
    
    return 0;
}
