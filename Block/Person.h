//
//  Person.h
//  Block
//
//  Created by 黄念敏 on 2021/4/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

-(void)blockDome:(void(^)(void))b;

-(void)test:(int)a;
-(void)blockDomeStr:(void(^)(NSString*))b;
-(void)blockDomeReturnInt:(int(^)(NSString*))b;
@end
NS_ASSUME_NONNULL_END
