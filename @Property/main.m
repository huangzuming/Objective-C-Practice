//
//  main.m
//  Property
//
//  Created by 黄念敏 on 2021/4/28.
//

#import <Foundation/Foundation.h>

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {

    //对象.对象属性 其实就是调用getting方法
    Person *p = [Person new];

    p.heigth = 100;
    p.weight = 200; //初始化了_weight 和_weight01
    p.age =13;
    
    NSLog(@"heigth = %f ,weight = %i weigth01 = %i age=%i",p.heigth,p.weight,p->_weight01,p.age);
    //这里使用p->_weight01 是因为_weight01并没有setting和getting方法
    
    
    
    [p setWage:1000];
    NSLog(@"%d",[p wage]);
    
    
    return 0;
}
