//
//  main.m
//  NSString
//
//  Created by 黄念敏on 2021/4/22.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
 
    //如何创建字符串对象
    //1,通过字符串常量创建
    NSString *str01 = @"str01";
    NSString *str001 = @"str01";
    NSLog(@"str01 = %p , str001 = %p",str01,str001);//内容相同，地址相同
    
    
    //2,通过alloc init创建
    NSString *str02 = [[NSString alloc] initWithFormat:@"str02"];
    NSString *str002 = [[NSString alloc] initWithFormat:@"str02"];
    NSLog(@"str02 = %p , str002 = %p",str02,str002);//mac平台下，内容相同，地址相同
    
    //3、通过类工厂方法创建（alloc init方法的封装）
    NSString *str03 = [NSString stringWithFormat:@"str03"];
    
    
    /*
     注意1：
     1、不同的方法创建的字符串，字符串存储的地方不一样
        ->如果是通过字符串常量创建，字符串会存到常量区中，而且如果字符串内容一样该字符串只创建一次，再创建也是让其他变量指向它
        ->如果是通过alloc initWithFormat/stringWithFormat方法创建字符串，字符串会存到堆中，而且每一次都会创建新的字符串对象
        ->不同的操作平台存储的方式不一样，如果是mac平台系统会对字符串进行优化，就会多个字符串对象会指向同一个存储空间（内容相同的情况），ios平台就不会
        ->不同的编译器存储的方法也不一样，在xcode6以下并且iOS平台下，每次通过alloc init都会创建新字符串对象，如果是在xcode6以上，那么就会多个字符串对象会指向同一个存储空间（内容相同的情况）
    */
    
    
    
    /*
     注意2:
     一般情况下，只要通过alloc init方法创建的字符串，都会在堆区开辟一块新存储空间
     但是，如果通过initWithString方法创建除外，因为这个方法是通过copy（浅拷贝）返回一个字符串对象给字符串变量，所以不管在什么平台该方法创建的字符串对象都指向同一个存储空间（内容相同的情况）
     
     copy分为深拷贝和浅拷贝：
     深拷贝：会创建一个新对象并返回
     浅拷贝：不会创建新对象，只会返回被拷贝的对象的地址
     
     */
    
    //4、通过alloc initWithSting方法创建
     NSString *str003 =[[NSString alloc] initWithString:str03];//只对str03进行了浅拷贝得到str003
     NSLog(@"str03 = %p , str003 = %p",str03,str003);//所有平台下，内容相同，地址相同
    
    
    
    return 0;
}
