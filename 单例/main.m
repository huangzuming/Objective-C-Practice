//
//  main.m
//  单例
//
//  Created by 黄念敏 on 2021/4/27.
//

#import <Foundation/Foundation.h>
#import "Tools.h"
#import "File.h"

int main(int argc, const char * argv[]) {
 
    /*
     单例模式：
     目的：意图让这个类的实例对象为系统中唯一的
     
     单例类：
     在整个程序中只有一个实例，并且提供一个类工厂方法供全局调用
     在编译时初始化这个类，然后一直保存在内存中，到程序（APP）退出时由系统自动释放这部分内存。
     
     单例类设计要点：
     （1）、这个类只能有一个实例
     （2）、这个类必须自行创建出这个实例对象
     （3）、必须向整个系统提供这个实例对象
     （4）、这个类工厂方法必须是一个静态类
     
     
     使用的优点：
     （1）、在整个程序中只会实例化一次，所以在程序如果出了问题，可以快速的定位问题所在；
     （2）、由于在整个程序中只存在一个对象，节省了系统内存资源，提高了程序的运行效率；
     使用的缺点：
     （1）、不能被继承，不能有子类；
     （2）、不易被重写或扩展（可以使用分类）；
     （3）、同时，由于单例对象只要程序在运行中就会一直占用系统内存，该对象在闲置时并不能销毁，在闲置时也消耗了系统内存资源；

     系统提供的单例类：
     UIApplication(应用程序实例类)
     NSNotificationCenter(消息中心类)
     NSFileManager(文件管理类)
     NSUserDefaults(应用程序设置)
     NSURLCache(请求缓存类)
     NSHTTPCookieStorage(应用程序cookies池)
     
     */
    
    Tools *t1 =[[Tools alloc] init];
    Tools *t2 =[Tools new];
    Tools *t3 =[t2 copy];
    Tools *t4 =[t3 mutableCopy];
    
    NSLog(@"t1=%p,t2=%p,t3=%p,t4=%p",t1,t2,t3,t4);

    
    
    File *f1 =[[File alloc] init];
    File *f2 =[File new];
    File *f3 =[f2 copy];
    File *f4 =[f3 mutableCopy];
    
    NSLog(@"f1=%p,f2=%p,f3=%p,f4=%p",f1,f2,f3,f4);

    return 0;
}
