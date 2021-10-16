//
//  main.m
//  Protocol协议
//
//  Created by 黄念敏 on 2021/4/22.
//

#import <Foundation/Foundation.h>
#import "Wife.h"
#import "WifeProtocol.h"
#import "Person.h"

int main(int argc, const char * argv[]) {

    /*
     protocol（协议） ：和分类类似，为类扩充方法
     特点：1、只能扩充方法的声明，不能扩充方法的实现和属性声明，所以协议只有.h文件
          2、一个类可以有多个协议，而且子类会继承父类的协议
          3、协议可以从另外一个协议继承，并且可以实现多继承
             @protocol A协议名 <B协议名>
             代表A协议继承B协议，A协议中既有自己的方法声明，也有B协议中的方法申明
    
     */
    
    //协议用法：
    Person *p =[[Person alloc] init];
    Wife *w= [[Wife alloc] init];
    
    //这种方法是限制创建的对象必须准守了某个协议
    //Wife<WifeProtocol> *w= [[Wife alloc] init];
    
    p.wife = w;
    
    [p show];
    return 0;
}
