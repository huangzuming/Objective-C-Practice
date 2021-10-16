//
//  God.h
//  Copy和Property
//
//  Created by 黄念敏 on 2021/4/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface God : NSObject
//基本数据类型用assign，因为不需要生成内存管理代码
@property (nonatomic,assign) int age;

@property (nonatomic,assign) NSString *daughter;
@property (nonatomic,strong) NSString *wife;
@property (nonatomic,copy) NSString *name;
@end

NS_ASSUME_NONNULL_END
