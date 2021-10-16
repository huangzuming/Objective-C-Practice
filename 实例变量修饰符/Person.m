//
//  Person.m
//  实例变量修饰符
//
//  Created by 黄念敏 on 2021/4/13.
//

#import "Person.h"

@implementation Person
#pragma  mark - 私有变量
//写在@implementation的变量就是私有变量
{
    //私有变量只能在本类使用，子类也无法访问
    //默认是@private修饰，而且就算用@public修饰外部也无法访问
    double _money;
}

#pragma  mark - 私有方法

//私有方法：只有实现没有声明，只能在本类使用（其实oc没有真正的私有方法）
+(void)test01{
    NSLog(@"这是一个私有方法");
}
-(void)test02{
    NSLog(@"这是一个私有方法");
}


#pragma  mark - description
//NSLog(@"Person对象:%@",p); 之所以会输出对象的信息，是因为内部会调用对象的-description方法，并且把-description方法返回的OC字符串输出的屏幕上
-(NSString *)description{
    //尽量不要在description中使用self ，因为容易出现死循环
    return [NSString stringWithFormat:@"%s :_height=%f,_weigth=%i,_age = %i",__func__,_heigth,_weight,_age];
}

@end
