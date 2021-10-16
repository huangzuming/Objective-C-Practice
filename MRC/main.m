//
//  main.m
//  MRC
//
//  Created by 黄念敏 on 2021/4/28.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Room.h"

int main(int argc, const char * argv[]) {
    /*
     
     如何设置为手动管理内存（MRC）？
     设置方法：
        0、选中需要变更为mrc运行的targets
        1、在bulid settings 中搜索 gar
        2、Automatic Reference Counting 将YES改为NO。
     
     
     
     
     如何在手动模式下，避免已经被释放的堆空间被指针引用并使用呢？
     有两种解决方式：
     1、打开僵尸对象检查机制【一但这块堆空间被标记释放了，那么所有的指针都不能使用这块空间】
     2、将你认为可能是指向僵尸堆空间的指针设置成nil,

     
     */
    
    //知识一：
    Person *p = [[Person alloc] init];//retainCount+1=1
    NSLog(@"%lu",(unsigned long)[p retainCount]);
    [p release]; //retainCount-1=0
    //这个时候p已经成为野指针
    //所以需要把野指针设置成空指针,不然会出现野指针错误
    //空指针发消息是不会报错的
    p = nil;
    NSLog(@"--------------------");
    
    
    //知识二；
    //内存管理原则：一个alloc对应一个release  一个retain对应于一个release
    Person *p1 = [[Person alloc] init];
    Room *r1 = [[Room alloc] init];
    
    r1.Number = 888;//设置房号
    p.room = r1; //p的room指向了r1
    
    
    //换房间
    Room *r2 = [[Room alloc] init];
    r2.Number = 999;//设置房号
    p1.room = r2; //p的room指向了r1
    
    
    [r1 release];
    [r2 release];
    [p1 release];
    
    return 0;
}

