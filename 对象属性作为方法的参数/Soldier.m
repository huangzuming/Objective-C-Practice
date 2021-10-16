//
//  Soldier.m
//  对象属性作为方法的参数
//
//  Created by 黄念敏 on 2021/4/13.
//

#import "Soldier.h"

@implementation Soldier
-(void)fireGun:(Gun *)gun{
    
    _gun = gun;
    
    NSLog(@"获得了枪");
    if (gun->_clip->_bullet>0) {
        [gun shoot];
    }else{
        [gun->_clip noBullet];
    }
}
@end
