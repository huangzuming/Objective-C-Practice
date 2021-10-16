//
//  Person.h
//  构造方法
//
//  Created by 黄念敏 on 2021/4/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property int age;
//自定义构造方法的声明
-(instancetype)initWithAge:(int)age;
@end

NS_ASSUME_NONNULL_END
