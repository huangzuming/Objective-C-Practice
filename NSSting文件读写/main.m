//
//  main.m
//  NSSting对文件读写
//
//  Created by 黄念敏 on 2021/4/22.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {


    /*
     读取：
     stringWithContentsOfFile方法：获取文件，读取文件的内容写入到字符串中
     encoding ：编码格式
     error：如果读取错误就会把错误信息自动保存到error中
     
     注意：在oc中凡是xxxOfFile都是要填入绝对路径
     */
    
    NSString *path = [NSString stringWithFormat:@"/Users/number/Documents/Xcode/Objective-C练习2021/writeToFile练习.txt"];
    NSError *error = nil;
    
    //这里的error是需要传入指向指针的指针，就是传入对象变量的地址（本来对象就是一个指针，获取指针的地址，就是指向指针的指针）
    NSString *str = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&error];
    
    if (error != nil) {//如果error非空就是出现问题
        NSLog(@"error = %@",error);//打印所有的失败的信息
        NSLog(@"[error localizedDescription] = %@",[error localizedDescription]);//打印一个完整的句子来描述为什么操作失败
    }else{
        NSLog(@"str = %@",str);
    }

    

    /*
     写入：
     writeToFile方法：是个对象方法，该方法会把字符串写入到文件中（全覆盖的方式），如果没有该文件就会自动创建对应文件，并会返回bool值是否写入成功
     atomically ：传入YES就是写入完全成功才生成文件，传入NO就是就算没有完全写入完成也生成文件
     encoding ：编码格式
     error：如果写入错误就会把错误信息自动保存到error中
     
     注意：在oc中凡是xxxOfFile都是要填入绝对路径
     */
    
    NSString *contents = @"我要玩亚索";
    NSString *path2 = @"/Users/number/Documents/Xcode/Objective-C练习2021/writeToFile练习.txt";
    NSError *error2 = nil;
    
    BOOL isSuccss = [contents writeToFile:path2 atomically:YES encoding:NSUTF8StringEncoding error:&error];

    if (isSuccss) {
        NSLog(@"写入成功");
    }else{
        NSLog(@"写入失败 error = %@",[error2 localizedDescription]);
    }
    
    
    

    
    
    
    
    
    
    
    
    return 0;
}
