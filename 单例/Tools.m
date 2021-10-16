//
//  Tools.m
//  单例
//
//  Created by 黄念敏 on 2021/4/27.
//



#import "Tools.h"
@implementation Tools
//提供一个全局静态变量(标记这个单例对象是否存在了)

static Tools *_instance;
//类工厂方法，用于获取这个单例对象
+(instancetype)shareTools{
    return [[self alloc] init];
}

//alloc被调用时会调用父类的allocWithZone方法
//这里重写就是控制实例对象的唯一
+(instancetype)allocWithZone:(struct _NSZone *)zone{
    //方案一:加互斥锁,解决多线程访问安全问题
//    @synchronized(self){//同步的
//        if (!_instance) {
//            _instance = [super allocWithZone:zone];
//        }
//    }
    
    //方案二.GCD dispatch_onec,本身是线程安全的,保证整个程序中只会执行一次
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];//调用父类的allocWithZone方法创建这个单例对象
    });
    return _instance;

}

//规范
//这个单例对象的Copy方法被调用的时候会调用copy协议的copyWithZone方法
//遵从NSCopying协议,可以通过copy方式创建对象
- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    return _instance;//因为是单例，所以不需要创建新的对象返回
}
//这个单例对象的mutableCopy方法被调用的时候会调用NSMutableCopying协议的mutableCopyWithZone方法
//遵从NSMutableCopying协议,可以通过mutableCopy方式创建对象
- (nonnull id)mutableCopyWithZone:(nullable NSZone *)zone {
    return _instance;//因为是单例，所以不需要创建新的对象返回
}


/*
//MRC中需重写的方法,ARC不需要也不可以重写
//防止外部对单例的引用计数器进行操作，从而让单例对象过早被释放
-(oneway void)release{
    //不用写代码
}
-(instancetype)retain{
    //不用写代码
    return _instance;
}
-(NSUInteger)retainCount{
    //这里是为了方便程序员直接交流，返回一个比较大的数,外部一打印这个对象的ratainConunt就知道这是个单例
    return NSIntegerMax;
}
*/

//修改环境为MRC:选择项目 Target -> Build Sttings -> All -> 搜索‘Automatic’ -> 把 Objective-C Automatic Reference Counting 设置为 NO
@end
