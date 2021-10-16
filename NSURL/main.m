//
//  main.m
//  NSURL
//
//  Created by 黄念敏 on 2021/4/22.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    /*
      URL : (Uniform Resource Locator) 统一资源定位符，是互联网的标准资源地址，而且每一个资源都有一个唯一的url
     URL组成：协议、主机域名（服务器名称或ip地址）、路径
     简单URL：协议头//主机域名/资源路径
     
     协议头：
     http://(https://) 超文本传输协议
     ftp:// 文件传输协议
     flie:// 本地电脑文件
     */
     
    //创建URL
    //使用URLWithString创建
    //注意：
    //1、全路径不可以有中文，如果一定有需要对路径进行字符串转码
    //2、如果是使用file访问本机，域名可以省略，但是/不能省，因为/代表根路径
    
    //NSString *strPath01 = [NSString stringWithFormat:@"http://www.baidu.com"];
    NSString *strPath01 = [NSString stringWithFormat:@"file://192.168.31.83/Users/number/Documents/Xcode/Objective-C练习2021/我要玩dnf.txt"];
    strPath01 =  [strPath01 stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];//现在用的转码
    //strPath01 =  [strPath01 stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];//已经弃用的转码
    NSLog(@"strPath01 = %@",strPath01);
    
    NSURL *url01 = [NSURL URLWithString:strPath01];
    NSLog(@"url01 = %@",url01);
    
    //使用字符串的writeToURL方法写入字符串到url的文件里
    [[NSString stringWithFormat:@"我要玩dnf"] writeToURL:url01 atomically:YES encoding:NSUTF8StringEncoding error:nil];
    //使用字符串的stringWithContentsOfURL方法读取url里的字符串
    NSLog(@"url01里的内容 = %@",[NSString stringWithContentsOfURL:url01 encoding:NSUTF8StringEncoding error:nil]);
    
    
    
    
    NSLog(@"-----------------------");
    

    
    
    //使用fileURLWithPath创建
    //注意：
    //1、该方法会自动在路径中添加协议头
    //3、主机域名也不用写，
    //2、也不需要对中文进行转码
    NSString *strPath02 = [NSString stringWithFormat:@"/Users/number/Documents/Xcode/Objective-C练习2021/我要玩dnf.txt"];
    NSLog(@"strPath02 = %@",strPath02);
    NSURL *url02 = [NSURL fileURLWithPath:strPath02];
    NSLog(@"url02 = %@",url02);
    
    [[NSString stringWithFormat:@"我要玩女漫"] writeToURL:url02 atomically:YES encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"url02里的内容 = %@",[NSString stringWithContentsOfURL:url02 encoding:NSUTF8StringEncoding error:nil]);

    
    return 0;
}
