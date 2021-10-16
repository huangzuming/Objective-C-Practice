//
//  Person.h
//  Protocol协议
//
//  Created by 黄念敏 on 2021/4/22.
//

#import <Foundation/Foundation.h>
#import "WifeProtocol.h"
@class Wife;

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
//协议的用法:限制对象属性的类型
@property (nonatomic,strong) Wife<WifeProtocol> *wife;


-(void)show;
@end

NS_ASSUME_NONNULL_END
