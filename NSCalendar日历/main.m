//
//  main.m
//  NSCalendar日历
//
//  Created by 黄念敏 on 2021/4/26.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSDate *nowDate =[NSDate date];//创建NSDate变量时，默认保存的时间就是当前的时间
    NSLog(@"nowDate = %@ ",nowDate);//默认打印会转换为当前时区的时间，其实保存的是0时区的时间
    NSLog(@"nowDate = %@ ",[nowDate descriptionWithLocale:nil]);//打印真实保存的数据
    NSLog(@"nowDate = %@ ",[nowDate descriptionWithLocale:[NSLocale currentLocale]]);//按照当前系统本地设置的显示格式打印
    
    
    
 
    //日历类
    //用途：根据日历类的当前时间获取年月日
    NSCalendar *calendar =[NSCalendar currentCalendar];
    
    //获取一个时间数据
    NSInteger year =  [calendar component:NSCalendarUnitYear fromDate:nowDate];
    NSLog(@"year = %lu",year);
    
    //获取多个时间数据
    //oc中如果一个方法接受的类型是个枚举,而且是同时接受多个相同类型的枚举值，可以用｜把枚举值连起来
    NSCalendarUnit calendarUnit = NSCalendarUnitYear|
                                  NSCalendarUnitDay|
                                  NSCalendarUnitMonth;
    
    NSDateComponents *components = [calendar components:calendarUnit fromDate:nowDate];
    NSLog(@"year = %lu month = %lu",components.year,components.month);
    
    
    //比较两个日期相差的时间（可以全部时间比较，也可以单独比较年、月、日...）
    //fromDate:从这个时间开始
    //toDate：到这个时间
    //components：只比较的内容（年月日时分秒等等）
    //NSDateComponents *components2= [calendar components:calendarUnit fromDate:nowDate toDate:nowDate options:0];
    
    
    return 0;
}
