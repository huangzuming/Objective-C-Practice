//
//  Person.h
//  构造方法
//
//  Created by 黄念敏 on 2021/4/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property NSString *name;
+(instancetype)person;
+ (instancetype)personWithName:(NSString*)name;
- (instancetype)initWithName:(NSString*)name;
@end

NS_ASSUME_NONNULL_END
