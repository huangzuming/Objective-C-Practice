//
//  WifeProtocol.h
//  Protocol协议
//
//  Created by 黄念敏 on 2021/4/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// <NSObject> :遵守的协议
//WifeProtocol ：协议名称
@protocol WifeProtocol <NSObject>

@optional
-(void)play;
-(void)sleep;
-(void)fool;
@required

@end

NS_ASSUME_NONNULL_END
