//
//  main.m
//  NSArray文件读写
//
//  Created by 黄念敏 on 2021/4/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    NSArray *arr =@[@"my",@"love",@"how",@"will",@"end"];
    /*
     将数组写到字符串：
     1、把一个字符串写到文件中，本质是以xml文件保存的
     2、iOS开发中会将xml文件的扩展名保存为plist
     */
        
    NSString *filePath = @"/Users/number/Documents/Xcode/Objective-C练习2021/array.plist";
    
    //写入
    if ([arr writeToFile:filePath atomically:YES]) {
        NSLog(@"保存成功");
    }else{
        NSLog(@"保存失败");
    }

    
    //读取
    NSArray *arr2 = [NSArray arrayWithContentsOfFile:filePath];
    NSLog(@"读取成功 arr2 = %@",arr2);
    
    
    
    return 0;
}
