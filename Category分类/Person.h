//
//  Person.h
//  category分类
//
//  Created by 黄念敏on 2021/4/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    //分类要使用的原类的属性就必须手动添加成员变量的声明
    NSString *_name;
}
//@property 生成的带下划线的成员变量在.m文件中（私有的）
@property (nonatomic,strong) NSString *name;
-(void)say;
@end

NS_ASSUME_NONNULL_END
