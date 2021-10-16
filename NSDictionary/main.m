//
//  main.m
//  NSDictionary
//
//  Created by 黄念敏 on 2021/4/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    //字典NSDictionary
    //注意：key不能相同,因为不会重复保存，而且保存的内容是无序的
    
    
    //创建
    NSDictionary *dic01 =[NSDictionary dictionaryWithObject:@"hzm" forKey:@"name"];
    NSLog(@"dir01=%@",dic01);
    
    //用数组创建
    NSArray *arrKey =[NSArray arrayWithObjects:@"name",@"age",@"height", nil];
    NSArray *arrObj =[NSArray arrayWithObjects:@"mzm",@"16",@"156", nil];
    NSDictionary *dic02 =[NSDictionary dictionaryWithObjects:arrObj forKeys:arrKey];
    NSLog(@"dir02=%@",dic02);
    
    //快速创建
    NSDictionary *dic03=@{@"name":@"hzm",@"age":@"23",@"height":@"174"};
    NSLog(@"dir03=%@",dic03);
    
    //根据key获取value
    NSLog(@"key= name value = %@",[dic03 valueForKey:@"name"]);
    NSLog(@"key= name value = %@",[dic03 objectForKey:@"name"]);
    NSLog(@"key= name value = %@",dic03[@"name"]);
    
    //获取字典中键值对个数
    NSLog(@"dir键值对个数：%lu",[dic03 count]);
    
    //获取字典所有的key
    NSLog(@"dir06所有的key%@",[dic03 allKeys]);
    //获取字典所有的value
    NSLog(@"dir06所有的key%@",[dic03 allValues]);
    
    //字典的遍历1
    NSArray *tempArrKey = [dic03 allKeys];
    for (int i=0; i<dic03.count; i++) {
        NSLog(@"key= %@ value = %@",tempArrKey[i],[dic03 valueForKey:tempArrKey[i]]);
    }
    //字典的遍历2
    for (NSObject *key in dic03) {
        NSLog(@"key= %@ value = %@",key,dic03[key]);
    }
 
    //字典的遍历3
    [dic03 enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            NSLog(@"key= %@ value = %@",key,obj);
    }];
    
    
    
    //字典保存到文件中
    NSString *filePath = @"/Users/number/Documents/Xcode/Objective-C练习2021/dic.plist";
    [dic03 writeToFile:filePath atomically:YES];
    
    //读取plist文件保存到字典
    NSDictionary *dic04 =[NSDictionary dictionaryWithContentsOfFile:filePath];
    NSLog(@"dir04 = %@",dic04);
    
    
    return 0;
}
