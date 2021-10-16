//
//  main.m
//  new方法
//
//  Created by 黄念敏 on 2021/4/14.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    
   //发送new消息会做的事情：1.创建对象并分配存储空间 2.初始化对象中的属性 3.返回对象的地址
   //Person *p = [Person new];
    
    //alloc： 1、创建对象并分配存储空间 2.初始化对象中的属性值为0 3.返回对象的地址
    //init ：返回对象地址
    Person *p1 = [Person alloc];
    Person *p2 = [p1 init];
    
    NSLog(@"p1 = %@,p2 = %@ ",p1,p2); //p1 p2 指向的内存空间相同
    
    //init开头的方法称之为构造方法
    
    Person *p = [[Person alloc] init];
    
    NSLog(@"%@",p.name);
    
    
    return 0;
}
