//
//  Person.h
//  Property
//
//  Created by 黄念敏 on 2021/4/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    @public
     int _weight01;
     double _heigth;
     
}

#pragma mark - @property 1.0
//@property是编译器特性，
//注意：在Xcode4.4之前，@property 配合 @synthesize使用，
//@property 负责声明属性
//@synthesize 负责让编译器在.m文件中生成带下划线的实例变量（私有的）,并且自动生成setter、getter方法（如果实例变量里有对应带下划线的属性，就不会生成）

@property int weight;
@property double heigth;
@property int age;

#pragma mark - @property 2.0 不用@synthesize了
//1、xcode 4.4 后 @property得到加强，
//2、能自动生成变量的声明和实现，而且还会自动赋值到带下划线的对应的成员变量
//3、如果没有对应带下划线的成员变量系统还会在.m文件中自动生成带下划线的成员变量（私有的）
@property (nonatomic) int wage;

//4、自定义重写了seter方法 @property 就只会自动生成getter的方法（反之如此）
//5、自定义重写了setter和getter方法 @property 就不会自动生成get和set的方法（就不会生成带下划线的成员变量）********
-(void)setWage:(int)wage;


#pragma mark - @property 3.0 新增属性修饰符
//属性修饰符
/*
 
 生成setting和getting方法：
       readonly 只读，只生成getter方法
 默认 ：readwrite 可读可写，即生成getter也生成setting
       getter=method 修改getter方法的名称，而且默认getter方法不再可用（不常用）
       setter=method： 修改setter方法的名称，而且默认setter方法不再可用（一般bool类型使用，约定修改称isXXX）


对内存管理：
       retain（对象类型属性使用）在getting和setting方法内自动生成内存管理的代码
 默认  ：assign（基本数据类型使用）不会在getting和setting方法内自动生成内存管理的代码
 
 
 线程控制：
        nonatomic  多线程（高性能）
 默认：  atomic  单线程
 
 
 
 copy：进行拷贝，通常NSString和block和delegate使用
       NSString 使用是为了进行拷贝，防止内部数据被其他对象指向并修改
       block 使用是为了把block从栈区迁移到堆区，防止block被过早释放了，而其他地方调用就会出现崩溃现象。
            （注意：arc中，使用copy，编译器会自动迁移，而mrc中block需要手动调用copy方法）
 */



//可读可写(默认就是这个，所以可以省略)
@property (readwrite) NSString *Name1;
//只读
@property (readonly) NSString *Name2;

//修改getting方法名称
@property (getter=def) NSString *Name3;
//修改setting方法名称
@property (setter=abc:) NSString *Name4;



@end

NS_ASSUME_NONNULL_END
