//
//  Animal.h
//  多态
//
//  Created by 黄念敏 on 2021/4/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
/*
 实例变量修饰符
 @public 就是实例变量的修饰符
 
 #warning 修饰符
 @public (公开的)   [可以在本类、其他类]
 > 可以在其他类中方法 被 public修饰的成员变量
 > 也可以在本类中方法 被 boublic 修饰的成员变量
 > 可以子类 在子类中 访问 父类中的 @public修饰的成员变量
 
 @private (私有的) [不可以在其他类 不可以在子类 只能在本类]
 > 不可以在其他类中访问 被 private修饰的成员变量
 > 可以在本类中 访问被 private修饰的成员变量
 > 不可以 在子类中 访问父类中 被private修饰的成员变量
 
 @protected (受保护的) [不可以在其他类 可以在子类 只能在本类]
 > 不可以 在其他类中访问 被 protected 修饰的成员变量
 > 可以 在本类中访问 被protected修饰的成员变量
 > 可以子类 在子类中 访问 父类中的 @protected修饰的成员变量

 注意: 默认情况下 所有的实例变量都是protected
 
 @package (包:可以在本类、其他类) [相当于 访问当前的包]
 > 介于 public 和 private之间的
 如果是 其他包中访问 那么 就是private的
 如果是 当前代码所在的包中 访问就是public的
 
 // 实例变量修饰符作用域 : 从现在的位置开始, 一直知道下一个修饰法的出现
 // 如果没有遇到下一个字节变量修饰符, 那么修饰后面所有的实例变长;
 */

@interface Animal : NSObject
{
    
    int age;
}

-(void)eat;
@end

NS_ASSUME_NONNULL_END
