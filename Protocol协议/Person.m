//
//  Person.m
//  Protocol协议
//
//  Created by 黄念敏 on 2021/4/22.
//

#import "Person.h"
//注意：.h文件中使用了@class 关键字引入的wife头文件 ，所以在.m文件需要import wife头文件
#import "Wife.h"

@implementation Person
-(void)show{
    
    //调用属性对象的方法需要先判断该方法是否实现，不如容易出现空访问的问题，出现崩溃
    if ([self.wife respondsToSelector:@selector(sleep)]) {
        [self.wife sleep];
    }
    
    if ([self.wife respondsToSelector:@selector(play)]) {
        [self.wife play];
    }
    
    if ([self.wife respondsToSelector:@selector(fool)]) {
        [self.wife fool];
    }
}
@end
