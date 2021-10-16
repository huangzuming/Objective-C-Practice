//
//  Teacher.h
//  代理设计模式
//
//  Created by 黄念敏 on 2021/4/22.
//

#import <Foundation/Foundation.h>
//告诉这个类studentProtocol是个协议
@protocol StudentProtocol;


NS_ASSUME_NONNULL_BEGIN

@interface Teacher : NSObject <StudentProtocol>

@end

NS_ASSUME_NONNULL_END
