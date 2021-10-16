//
//  main.m
//  ARC和MRC混编
//
//  Created by 黄念敏 on 2021/4/16.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Car.h"
int main(int argc, const char * argv[]) {

    /*
     
     ARC工程使用MRC的类:
     在XCode中targets的build phases选项下Compile Sources下选择 不需要arc编译的文件

     输入 -fno-objc-arc 即可

     MRC工程使用ARC的类：

     在XCode中targets的build phases选项下Compile Sources下选择要使用arc编译的文件

     输入 -fobjc-arc 即可
     */
    
    Person *p = [[Person alloc] init];
    Car *c =[[Car alloc] init];
    c.number =@"991";
    p.name = @"hzm";
    
    p.car = c;
    c.person =p;//出现相互引用，对象永远不被释放
    
    
    return 0;
}
