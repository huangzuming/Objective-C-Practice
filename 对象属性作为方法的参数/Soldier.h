//
//  Soldier.h
//  对象属性作为方法的参数
//
//  Created by 黄念敏 on 2021/4/13.
//

#import <Foundation/Foundation.h>
#import "Gun.h"
NS_ASSUME_NONNULL_BEGIN

@interface Soldier : NSObject
{
    Gun *_gun;
}
-(void)fireGun:(Gun*)gun;
@end

NS_ASSUME_NONNULL_END
