//
//  main.m
//  字符串NSString
//
//  Created by 黄念敏 on 2021/4/12.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    
    //c语言的字符串(不是对象) 输出格式%s
    char *c1 = "mzm";
    char c2[] ="hzm";

  
    //oc的字符串是一个对象 输出格式%@
    NSString *str1 = @"hzmmzm";

    //oc格式化创建字符串
    NSString *str2 = [NSString stringWithFormat:@"%s love %s",c1,c2];
    NSLog(@"str2 = %@",str2);
    
    //oc计算字符串长度
    NSUInteger len =  [str1 length];
    NSLog(@"[str1 length] = %lu",len);
    
    
    //oc 取其中一个字符（索引从0开始，而且不支持中文因为中文占4个字符）
    char c =[str1 characterAtIndex:3];
    NSLog(@"从str1中取出字符：%c",c);
    
    //oc字符串转基本数据类型
    NSString *numberStr01 = @"123";
    int strInt = [numberStr01 intValue];
    NSLog(@"strInt = %i",strInt);
    
    //oc比较字符串是否内容相等
    //isEqualToString: 直接判断字符串内容是否相等）
    NSString *str3 = [NSString stringWithFormat:@"hzm"];
    NSString *str4 = [NSString stringWithFormat:@"hzm"];
    
    if ([str3 isEqualToString:str4]) {
        NSLog(@"str3 等于 str4");
    }else{
        NSLog(@"str3 不等于 str4");
    }
    
    //==: 对于基本数据类型比较的是值; 对于对象类型比较的是对象的地址是否相同
    //又因为mac平台对字符串存储进行优化，所以内容相同指针指向同一个存储地址
    if(str3 == str4){
        NSLog(@"str3地址%p 等于 str4地址%p",&str3,&str4);
    }else{
        NSLog(@"str3地址%p 不等于 str4地址%p",&str3,&str4);
    }
    
    
    //oc字符串拼接
   NSString *str5 = [str3 stringByAppendingString:str4];
   NSLog(@"字符串拼接：str3+str4 = str5 = %@",str5);
   //appending：附加，增补
    
    
    //oc字符串比较大小
    //（原理：逐一比较字符的大小，以出现大小不一样就返回0或1）
    //compare:方法会返回一个枚举，枚举值为：NSOrderedAscending小于,NSOrderedSame等于,NSOrderedDescending大于
    switch ([str3 compare:str4]) {
        case NSOrderedAscending:
            NSLog(@"str3 < str4");
            break;
        case NSOrderedSame:
            NSLog(@"str3 = str4");
            break;
        case NSOrderedDescending:
            NSLog(@"str3 > str4");
            break;
    }
    //compare：比较，对比
    
    
    
    //oc字符串分离
    //componentsSeparatedByString方法：把传进来的字符串作为分离的标准，最后把结果返回一个字符串数组
    //注意：1、如果没有找到对应的分离字符，那么会返回只有一个字符串（原字符串）的字符串数组
         //2、如果被分离的字符串第一个字符就是分离标准的字符，那么返回的字符串数组第一个元素是个空字符串
         //3、该方法对中文不友好会，会把字符串中文转译为unicode码
    NSString *str6 = [NSString stringWithFormat:@" you BelOng to meme to"];
    NSArray *strArray = [str6 componentsSeparatedByString:@" "];
    NSLog(@"%@",strArray);
    //components ：组成
    //Separated :分开的
    
    

    //oc字符串大小写转换
    NSLog(@"str6转换为大写%@",[str6 uppercaseString]);//全部转换为大写
    NSLog(@"str6转换为小写%@",[str6 lowercaseString]);//全部转换为小写
    NSLog(@"str6转换首字母大写%@",[str6 capitalizedString]);//转换为首字母大写（原理遇到空格下个字母转换为大写）
    
    
    //oc字符串查找
    //rangeOfString：注意：该方法只会从头开始查找，一旦查找到就停止并返回NSRange值
    //NSRange：是个结构体，内部只有两个元素location、length
    //location：查找到的字符串在原字符串中的起始索引（索引从1开始），注意：如果没有查找到会返回（9223372036854775807）这个值就是63位的最大二进制数字，这和操作系统的位数有关
    //length：查找的字符串的长度，注意：查找到才会返回这个值
    
    NSRange range = [str6 rangeOfString:@"hh"]; //复习：结构体可以先声明在赋值
    if (range.location == NSNotFound) {
        NSLog(@"没找到，location= %lu, NSNotFound= %lu",range.location,NSNotFound);
    }else if(range.length == 0){
        NSLog(@"没找到：length == 0 ");
    }else{
        NSLog(@"location=%lu ,length=%lu",range.location,range.length);
    }
    //NSNotFound表示就是63位的最大二进制数字9223372036854775807，所以平时使用==NSNotFound来判断是否查找到
    
    
    //oc字符串倒序查找
    NSRange range2 = [str6 rangeOfString:@"to" options:NSBackwardsSearch];
    if (range2.location == NSNotFound) {
        NSLog(@"没找到：location= %lu, NSNotFound= %lu",range2.location,NSNotFound);
    }else if(range2.length == 0){
        NSLog(@"没找到：length == 0 ");
    }else{
        NSLog(@"找到：location=%lu ,length=%lu",range2.location,range2.length);
    }
    /*
     enum NSStringCompareOptions{
         NSCaseInsensitiveSearch = 1,//不区分大小写比较
         NSLiteralSearch = 2,//区分大小写比较
         NSBackwardsSearch = 4,//从字符串末尾开始搜索
         NSAnchoredSearch = 8,//搜索限制范围的字符串
         NSNumbericSearch = 64//按照字符串里的数字为依据，算出顺序。例如 Foo2.txt < Foo7.txt < Foo25.txt
         NSDiacriticInsensitiveSearch = 128,//忽略 "-" 符号的比较
         NSWidthInsensitiveSearch = 256,//忽略字符串的长度，比较出结果
         NSForcedOrderingSearch = 512//忽略不区分大小写比较的选项，并强制返回 NSOrderedAscending 或者 NSOrderedDescending
         NSRegularExpressionSearch = 1024//只能应用于 rangeOfString:..., stringByReplacingOccurrencesOfString:...和 replaceOccurrencesOfString:... 方法。使用通用兼容的比较方法，如果设置此项，可以去掉 NSCaseInsensitiveSearch 和 NSAnchoredSearch
     }

     */
    
    //oc字符串是否包含某个字符串
    NSString *tempStr = [NSString stringWithFormat:@"to"];
    if ([str6 containsString:tempStr]) {
        NSLog(@"str6中包含%@",tempStr);
    }else{
        NSLog(@"str6中不包含%@",tempStr);
    }
    
    //oc判断前后缀
    //Bool isS = [str hasSuffix:@""]; 判断后缀
    //Bool isP = [str hasPrefix:@""]; 判断前缀
    NSString *str7 = [NSString stringWithFormat:@"http://www.anyview.net/uesr/number/desktop/mzm.jpg"];
    if ([str7 hasPrefix:@"http://"]) {
        NSLog(@"str7是网站");
    }else{
        NSLog(@"str7不是网站");
    }
    
    if ([str7  hasSuffix:@".jpg"]) {
        NSLog(@"str7图片地址");
    }else{
        NSLog(@"str7图片地址");
    }
    
    
    //oc字符串截取
    NSInteger i = 10;
    NSLog(@"截取str7从下标为%li开始:%@",(long)i,[str7 substringFromIndex:i]);
    NSLog(@"截取str7到下标为%li结束:%@",(long)i,[str7 substringToIndex:i]);
    NSLog(@"截取str7从下标为%lu开始到下标为%li结束:%@",(long)i,i+6,[str7 substringWithRange:NSMakeRange(i, i+6)]);
     
    
    //oc字符串替换方法一
    //注意NSMakeRange的索引开始0
    //range：是被替换的区间
    //withString：替换的字符串
    //options：遍历的方法
    NSRange range3 = NSMakeRange(0, 10);
    NSLog(@"字符串替换方法一：str7所有长度被替换后：%@",[str7 stringByReplacingOccurrencesOfString:@"." withString:@"-"]);
    NSLog(@"字符串替换方法一：str7部分长度被替换后：%@",[str7 stringByReplacingOccurrencesOfString:@"/" withString:@"." options:NSCaseInsensitiveSearch range:range3]);


    
    //oc字符串替换方法二
    //stringByReplacingCharactersInRange：该方法是对给定的区间（NSRange）进行全覆盖
    NSRange range4 = NSMakeRange(1, 10);
    NSLog(@"字符串替换方法二：str7部分内容被全替换后：%@",[str7 stringByReplacingCharactersInRange:range4 withString:@"hhhhh"]);//把索引1到10的字符去除并添加hhhh进去
    NSLog(@"字符串替换方法二：str7全部内容被全替换后：%@",[str7 stringByReplacingCharactersInRange:NSMakeRange(0, str7.length) withString:@"hhhhh"]);//把索引1到10的字符去除并添加hhhh进去
    
    
    
    /*
     [NSCharacterSet controlCharacterSet];                 //控制符的字符集
     [NSCharacterSet whitespaceCharacterSet];              //空格的字符集
     [NSCharacterSet whitespaceAndNewlineCharacterSet];    //空格和换行符的字符集
     [NSCharacterSet decimalDigitCharacterSet];            //十进制数字的字符集
     [NSCharacterSet letterCharacterSet];                  //所有字母的字符集
     [NSCharacterSet lowercaseLetterCharacterSet];         //小写字母的字符集
     [NSCharacterSet uppercaseLetterCharacterSet];         //大写字母的字符集
     [NSCharacterSet nonBaseCharacterSet];                 //非基础的字符集
     [NSCharacterSet alphanumericCharacterSet];            //字母和数字的字符集
     [NSCharacterSet decomposableCharacterSet];            //可分解
     [NSCharacterSet illegalCharacterSet];                 //非法的字符集
     [NSCharacterSet punctuationCharacterSet];             //标点的字符集
     [NSCharacterSet capitalizedLetterCharacterSet];       //首字母大写的字符集
     [NSCharacterSet symbolCharacterSet];                  //符号的字符集
     [NSCharacterSet newlineCharacterSet];                 //换行符的字符集
     */
    
    
    //oc字符串去除首尾空格(不能去除中间的)
    NSString *str8 = [NSString stringWithFormat:@"  http:// www.baidu. com  "];
    NSCharacterSet *set1 = [NSCharacterSet whitespaceCharacterSet];
    NSLog(@"去除str8首尾的空格%@",[str8 stringByTrimmingCharactersInSet:set1]);
    
    
    return 0;
}
