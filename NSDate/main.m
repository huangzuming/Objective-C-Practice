//
//  main.m
//  NSDate
//
//  Created by 黄念敏 on 2021/4/26.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    /*
     配合使用的类：
        NSDate :时间类，主要用于获取当前时间，和对时间进行操作
        NSTimeZone :时区类，获取时区，和对时间的操作
        NSDateFormatter: 时间格式化类，对时间进行自定义格式
     
     yyyy 年
     MM 月
     dd 日
     
     HH 时 （hh为12小时制）
     mm 分
     ss 秒
     
     */

    //1、获取当前时间
    NSDate *nowDate =[NSDate date];//创建NSDate变量时，默认保存的时间就是当前的时间
    NSLog(@"nowDate = %@ ",nowDate);//默认打印会转换为当前时区的时间，其实保存的是0时区的时间
    NSLog(@"nowDate = %@ ",[nowDate descriptionWithLocale:nil]);//打印真实保存的数据
    NSLog(@"nowDate = %@ ",[nowDate descriptionWithLocale:[NSLocale currentLocale]]);//按照当前系统本地设置的显示格式打印
    
    //2、创建时间格式化对象
    NSDateFormatter *formater = [[NSDateFormatter alloc] init];
    
    //获取当前时区
    //NSTimeZone *zone = [NSTimeZone systemTimeZone];
    //NSLog(@"zone = %@ ",zone);
    //设置格式时间的时区
    //[formater setTimeZone:zone];
    //默认会把传进来的时间的时区转换为系统所在的时区，所以不需要通常不需要设置
    
    
    //3、设置格式化的格式
    [formater setDateFormat:@"yyyy年MM月dd日 HH时mm分ss秒"];
    //4、对时间进行格式化
    NSString *nowStr = [formater stringFromDate:nowDate];
    NSLog(@"date转字符串 ：nowStr = %@",nowStr);
    //打印：2021年04月26日 07时59分20秒
    
    //字符串转时间
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"yyyy年MM月dd日 hh时mm分ss秒"];//注意这个格式要和字符串内的时间格式一样，不然无法进行转换
    NSDate *date = [dateFormatter dateFromString:nowStr];
    NSLog(@"字符串转date ：date = %@",date);//打印的时区是0时区的时间
   
    
    
    /*
     注意：
     1、[NSDate date]有可能获取到的是0时区的时间，而不是当前时区的时间
     2、所以需要对获取的时间进行时差处理
     3、dateByAddingTimeInterval方法，对时间增加秒数
     */
    
    
    return 0;
}
