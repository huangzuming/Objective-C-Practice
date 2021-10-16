//
//  main.m
//  category分类
//
//  Created by 黄念敏 on 2021/4/16.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person+HZM.h"
#import "Person+MZM.h"

int main(int argc, const char * argv[]) {
    
    
    Person *p = [[Person alloc] init];
    p.name = @"gk";
    [p say];
    
    /*
     分类：在不改变原类的代码的基础上新增一些方法
     
     格式（分声明和实现）：
     声明：
     @interface 原类名称 (分类名称)
        //方法列表
     @end
     
     实现：
     @implementation Person (HZM)
        //方法列表
     @end
     
     
     注意：1、分类不可以扩充属性（成员变量），就算使用@property 也只是会生成属性的get和set方法的声明，不会生成实现。而且也不会生成对应带下划线的成员变量。
          2、可以扩充原类有的方法，而且对象调用的时候会调用分类里的方法，因为原类的方法覆盖了。如果是多个类扩充了同一个方法，对象调用该方法会调用那一个分类里的要看系统最后编译那一个分类，就是哪一个分类的方法被调用
          3、分类要使用的原类的属性就必须手动添加成员变量的声明
     */
    
    [p laugh];//分类Person+MZM里的方法
    
    return 0;
}
