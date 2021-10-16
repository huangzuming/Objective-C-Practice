//
//  main.m
//  封装
//
//  Created by 黄念敏 on 2021/4/13.
//

#import <Foundation/Foundation.h>

#import "Gun.h"

int main(int argc, const char * argv[]) {

    Gun *g = [Gun new];
    
#pragma mark - 封装
    //成员变量在外部直接被访问，这样会无法约束修改的值
    //所以应该通过对象方法进行修改成员变量的值，这就是封装的
    //g->_bullet  = -1000;
    
    //setting方法
    [g setBullet:100];
    
    //getter方法
    NSLog(@"%i",[g bullet]);
    

    
#pragma mark - 点语法
    //点语法：oc里是编译器特性，实质是通过getter方法和setting方法对成员变量进行访问操作
    //点语法会在程序编译的时候自动转换成为setting和setter方法
    //转换为getter方法还是setter方法是根据点语法在 = 号的左边还是右边
    //注意：点语法在 = 号右边时还可以点成员方法（不建议使用）
    //[g setBullet:200];
    g.bullet = 200;

    //NSLog(@"%i",[g bullet]);
    
    NSLog(@"%i",g.bullet);
    
#pragma mark - self关键字
    
    //self关键字
    //口诀：谁调用就是谁(可以是类对象也可以是成员对象)
    //注意点：1、self会自动区分类方法和对象方法，所以出现调用问题会自动报错
    //       2、容易出现死循环，所以注意
    
    [g shoot];
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
