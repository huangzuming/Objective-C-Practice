//
//  main.m
//  Block
//
//  Created by 黄念敏 on 2021/4/21.
//

#import <Foundation/Foundation.h>
#import <stdio.h>
#import "Person.h"

void test(void);


//利用typedef给指向函数的指针起类型别名，默认指针名称就是类型名称
typedef void (*pp)(void);
//所以利用typedef给block起类型别名，默认block名称就是类型名称
typedef void (^bb)(void);
typedef int (^ibbi)(int);

int main(int argc, const char * argv[]) {

   /*
    block:一种数据类型，用于保存代码块的
    特点：和指向函数的指针极其相似
    */
    
    /*
     回顾：指向函数的指针
     void ：返回值
     (*p) ：是一个名称为p指向函数的指针
     (void)   ：形参
     */
    void (*p)(void);
    p = test;//函数的名称就保存了函数的地址
    p();
    
    
    
    /*
     void ：返回值
     (^b) ：是一个名称为b的block
     (void)   ：形参
     
     ^(){}; //block代码块格式
     
     ^  ： 代表是一个block代码块
     () ： 形参列表（没有形参时可以省略）
     {} ： 代码块内容
     注意：1、记得末尾的分号
          2、返回值类型是不需要写的（位置：直接写在形参前面）
        3、block可以访问外部变量，当外部和内部变量同名是优先访问内部的
        4、block默认情况下无法修改外部变量，因为block的访问是值传递
        5、如果block是访问__block关键字修饰的外部变量，就可以修改这个外部变量的值（因为这是指针传递）
        6、在mrc中，默认情况下block访问外部成员对象，是不会对外部成员变对象进行一次retain的，只有在copy操作后才会对外部成员变量进行retain。
                 （原因：默认block在全局常量区，引用了外部对象后就会放置到栈中，只有进行copy操作后会才会进入堆中，才需要对block进行retain或relese）
           注意：在arc中,block访问了外部变量后，同样会把block从全局静态代码区放到栈中，而且还会自动进行一次copy操作，让block进入堆中(不管有没有用copy修饰该block)
     */

    void (^b)(void);//没有返回值没有形参的block
    b = ^{
        printf("这是一个block\n");
    };//block代码块赋值给block变量
    
    //调用block变量保存的代码块
    b();
    
    
    int (^b2)(void);//有返回值没有形参的block
    b2 = ^{//返回值类型不需要写
        printf("这是一个返回值为int类型的block\n");
        return 100;
    };
    printf("返回值为%i\n",b2());//会先运行block内的代码在运行c语言的printf函数的打印
   
    
    void (^b3)(int);//没有返回值有形参的block
    b3 = ^(int a){
        printf("这是一个形参为int类型的block a = %i \n",a);
    };
    b3(1000);
    
    
#pragma mark - block结合typedef使用
    //利用typedef给指向函数的指针起别名后，可以直接用来声明变量
    pp p4 = test;//pp就是一种自定义的指向函数的指针的类型
    p4();
    
    //利用typedef给block起别名后，可以直接用来声明变量
    bb b4 = ^{
        printf("这是一个block\n");
    };
    b4();
    
    ibbi b5 = ^(int a){
        printf("这是一个形参为int类型的block a = %i \n",a);
        return a++;
    };
    printf("返回值为%i\n",b5(1010));//这里打印的返回值是1010 而不是1011，因为会先返回a再进行++
    
    
#pragma mark - block作为形参使用
    Person *ps =[[Person alloc] init];
    
    [ps blockDome:^{
        NSLog(@"aaaa");
    }];
    
    [ps blockDomeStr:^(NSString * _Nonnull str) {
        NSLog(@"bbbb , %@",str);
    }];
    
    [ps blockDomeReturnInt:^int(NSString * _Nonnull str) {
        NSLog(@"bbbb , %@",str);
        return 1;
    }];
    

#pragma mark - block 堆栈问题
    
    //情况一（没有访问外部变量和对象）
    void (^mblock1)(void)=^{
        printf("mblock1\n");
    };
    NSLog(@"mblock1 = %@",mblock1); //__NSGlobalBlock__ 此时是在全局常量区
    mblock1();

    //情况二（访问了外部变量和对象）
    int blocknNumber = 100;
    void (^mblock2)(void)=^{
        printf("mblock2 blockNumber = %i\n",blocknNumber);
    };
    
    NSLog(@"mblock2 = %@",mblock2);//__NSMallocBlock__ 此时是在堆区
    //其实是arc中自动进行一次[mblock2 copy]操作
    //所以在mrc中此时应该还在栈区，需要手动调用[mblock2 copy],把mblock2从堆迁移到栈
    mblock2();


    
    return 0;
}




void test(){
    printf("这是一个函数\n");
}




/**
 用途：
 1.把block保存成对象中的属性,在恰当的时刻调用
 2.把block当成方法的参数使用,block的调用在是在方法内部,在外界写block的实现(最常用)
 3.把block当成方法的返回值(比较少用)
 
 */
