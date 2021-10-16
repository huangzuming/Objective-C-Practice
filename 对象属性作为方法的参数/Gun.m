//
//  Gun.m
//  对象属性作为方法的参数
//
//  Created by 黄念敏 on 2021/4/13.
//

#import "Gun.h"


@implementation Gun
-(void)getClip:(Clip *)clip{
    _clip = clip;
}
-(void)shoot{
    _clip->_bullet--;
    NSLog(@"打了一枪");
}
@end
