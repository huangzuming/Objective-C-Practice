//
//  Clip.h
//  对象属性作为方法的参数
//
//  Created by 黄念敏 on 2021/4/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Clip : NSObject
{
    @public
    int _bullet;//子弹
}
-(void)noBullet;
@end

NS_ASSUME_NONNULL_END
