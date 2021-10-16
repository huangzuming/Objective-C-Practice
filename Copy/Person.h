//
//  Person.h
//  copy的内存关系
//
//  Created by 黄念敏 on 2021/4/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject <NSCopying,NSMutableCopying>
//基本数据类型用assign，因为不需要生成内存管理代码
@property (nonatomic,assign) int age;
@property (nonatomic,copy) NSString *name;
@end

NS_ASSUME_NONNULL_END
