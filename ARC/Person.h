//
//  Person.h
//  ARC
//
//  Created by 黄念敏 on 2021/4/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

//在arc中不能再使用ratain或assign修饰符修饰对象级属性
//改用strong/copy
//如果有相互引用的话就有一个应该使用weak 一个用strong
//assign 在arc中只能用来修饰基本数据类型
@property (nonatomic,strong) NSString *name;
@end

NS_ASSUME_NONNULL_END
