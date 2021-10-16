//
//  main.m
//  继承
//
//  Created by 黄念敏 on 2021/4/13.
//

#import <Foundation/Foundation.h>
#import "Iphone.h"
#import "Android.h"

int main(int argc, const char * argv[]) {
    //new方法也是继承来的，继承自NSObject类
    Android *a = [Android new];
    Iphone *i = [Iphone new];
    
    //继承的对象方法
    [a sendMessage:@"mzm" toNumber:@"1319220341"];
    [i sendMessage:@"mzm" toNumber:@"1319220341"];
    
    //继承的类方法
    [Android logo];
    [Iphone logo];
    
    //没有重写前的打电话方法
    [a callNumber:@"1314555613154"];
    //重写父类的打电话方法（而且.h文件里并没有声明该方法）
    [i callNumber:@"1314555613154"];
    
    //重写父类方法，并用super调用了父类的方法
    [Android caramePhotograph];
    [Iphone caramePhotograph];
    
    return 0;
}
