//
//  Gun.h
//  封装
//
//  Created by 黄念敏 on 2021/4/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Gun : NSObject
{
    //@public
    int _bullet;
}

//成员变量的封装setter方法和getter方法
-(void)setBullet:(int)bullet;
-(int)bullet;


//射击
-(void)shoot;
//装弹
-(void)reload;
@end

NS_ASSUME_NONNULL_END
