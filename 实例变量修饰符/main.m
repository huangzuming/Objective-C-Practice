//
//  main.m
//  实例变量修饰符
//
//  Created by 黄念敏 on 2021/4/13.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {

    Person *p = [Person new];

    //p->heigth = 100;不能访问
    p->_weight = 200;
    
    NSLog(@"%@",p);
    NSLog(@"%@",[p class]);
    NSLog(@"%p",p);
    
    

    
    
    return 0;
}
