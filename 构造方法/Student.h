//
//  Student.h
//  构造方法
//
//  Created by 黄念敏 on 2021/4/14.
//

#import <Foundation/Foundation.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Student : Person

@property NSString *name;
-(instancetype)initWithAge:(NSString *)name andAge:(int)age;
@end

NS_ASSUME_NONNULL_END
