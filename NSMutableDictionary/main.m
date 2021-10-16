//
//  main.m
//  NSMutableDictionary
//
//  Created by 黄念敏 on 2021/4/26.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
   
    //创建
    NSMutableDictionary *dicM =[NSMutableDictionary dictionary];
    
    //添加键值对
    [dicM setValue:@"hzm" forKey:@"name"];
    NSLog(@"dicM = %@",dicM);
    
    dicM[@"aa"] = @"hnm";
    
    //添加一个字典的所有键值到可变字典内
    [dicM setValuesForKeysWithDictionary:@{@"age":@13,@"height":@175}];
    NSLog(@"dicM = %@",dicM);
    
    //删除键值对
    [dicM removeObjectForKey:@"age"];
    NSLog(@"dicM = %@",dicM);
    
    
    //修改/替换键值对(利用相同key的情况下，后面的会覆盖前面的)
    [dicM setValue:@"mzm" forKey:@"name"];
    NSLog(@"dicM = %@",dicM);
    
    /*
     注意点：
     1、不能用@{}创建不可变字典
     2、不可变字典：出现相同的key，后面相同的key-value不会被保存
     3、可变字典：出现相同的key，后面的会覆盖前面的
     */
    return 0;
}
