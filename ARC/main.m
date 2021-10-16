//
//  main.m
//  ARC
//
//  Created by 黄念敏 on 2021/4/16.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {

    /*
    ARC :自动内存管理
    注意 :arc是一个编译器特性，不是运行时特性
    原理：只要没有强指针指向这个对象就会被释放(编译器在合适的地方添加retain和release)
    强指针：默认情况下所有的指针都是强指针
    
    */

    Person *p = [[Person alloc] init];
    
    NSLog(@"-------1");
    //强指针
    __strong Person *sp = [[Person alloc] init];
    
    NSLog(@"-------2");
    //弱指针
    __weak Person *wp = [[Person alloc] init];
    // wp会瞬间被释放，所以永远不要用弱指针保存一个对象
    
    NSLog(@"-------3");
    
    
    return 0;
}
