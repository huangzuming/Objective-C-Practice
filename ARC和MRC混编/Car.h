//
//  Car.h
//  ARC和MRC混编
//
//  Created by 黄念敏 on 2021/4/16.
//

#import <Foundation/Foundation.h>
@class Person;
NS_ASSUME_NONNULL_BEGIN


//MRC类
@interface Car : NSObject
/*
mrc开发中对内存管理的修饰符
retain（对象类型属性使用）在getting和setting方法内自动生成内存管理的代码
assign（基本数据类型使用）不会在getting和setting方法内自动生成内存管理的代码（也就不会进行retain和release处理）
*/




@property (nonatomic,assign) Person *person;//这里使用assign就是防止相互引用出现的内存泄露问题（无法释放）
@property (nonatomic,retain) NSString *number;
@end

NS_ASSUME_NONNULL_END
