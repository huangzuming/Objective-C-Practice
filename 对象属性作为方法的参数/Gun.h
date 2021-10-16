//
//  Gun.h
//  对象属性作为方法的参数
//
//  Created by 黄念敏 on 2021/4/13.
//

#import <Foundation/Foundation.h>
#import "Clip.h"

NS_ASSUME_NONNULL_BEGIN

@interface Gun : NSObject
{
    @public
    Clip *_clip;
}
-(void)getClip:(Clip*)clip;
//射击子弹方法
-(void)shoot;
@end

NS_ASSUME_NONNULL_END
