//
//  Gun.m
//  封装
//
//  Created by 黄念敏 on 2021/4/13.
//

#import "Gun.h"

@implementation Gun
-(void)setBullet:(int)bullet{
    if (bullet>=0) {
        _bullet = bullet;
    }else{
        NSLog(@"子弹数量有问题");
    }
}

-(int)bullet{

    return _bullet;
}



-(void)shoot{
    [self reload];
    NSLog(@"射击");
}
-(void)reload{
    NSLog(@"装弹");
}
@end
