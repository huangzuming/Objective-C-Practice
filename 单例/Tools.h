//
//  Tools.h
//  单例
//
//  Created by 黄念敏 on 2021/4/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Tools : NSObject <NSCopying,NSMutableCopying>


+(instancetype)shareTools;

@end

NS_ASSUME_NONNULL_END
