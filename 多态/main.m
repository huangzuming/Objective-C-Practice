//
//  main.m
//  多态
//
//  Created by 黄念敏 on 2021/4/13.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "Cat.h"
#import "Dog.h"
#import "Person.h"
int main(int argc, const char * argv[]) {
    //多态（出现继承为前提）
    //什么是多态：父类指针指向子类 ，就是多态
    
    Animal *ac = [Cat new];//这就是多态
    
    //ac 现在就是动态类型
    //动态类型：就是在编译的时候编译器只会检查当前类型有没有需要调用方法，运行时，系统会自动判断ac的真实类型
    
    [ac eat];
    //注意：多态中，要调用子类特有的方法时需要进行强制类型转换
    Cat *c = (Cat*)ac ;
    [c sleep];
     
    //多态用途
    Person *p = [Person new];
    Cat *c1 = [Cat new];
    [p food:c1];
    
    return 0;
}
