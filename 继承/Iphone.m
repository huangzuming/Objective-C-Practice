//
//  Iphone.m
//  继承
//
//  Created by 黄念敏 on 2021/4/13.
//

#import "Iphone.h"

@implementation Iphone
-(void)callNumber:(NSString*)number{
    NSLog(@"用Iphone打给%@",number);
}
//重写父类的拍照方法
+(void)caramePhotograph{
    NSLog(@"iphone打开闪光灯");
    
    //super 代表父类
    //super 在类方法中，就是调用类方法
    //super 在对象方法中，就会调用对象方法
    //可以利用super在任意方法中掉用父类的方法
    
    [super caramePhotograph];
}
@end
