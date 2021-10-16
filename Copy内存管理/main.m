//
//  main.m
//  Copy内存管理
//
//  Created by 黄念敏 on 2021/4/28.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    
    /*
     copy内存管理原则：
        一次aolloc init对应一次 release
        一次ratian 对应一次release
        一次coyp 对应一次release
     */
    
    //MRC中copy的内存管理（对OC中的对象进行copy/mutableCopy操作）
    
    //创建一个不可变的对象
    NSString *str = [NSString stringWithFormat:@"这是一个不可变字符串"];
    
    //浅拷贝：数据都不可变，不需要创建新的对象
    NSString *strC = [str copy];//内部调用了[str ratain]
    
    [str release];
    [str release];
    
    
    
    //创建一个可变的对象（因为对象内容可以改变）
    NSMutableString *strM = [[NSMutableString alloc] init];//[p ratain]
    
    //深拷贝：因为需要二者互不干扰，所以需要创建新的对象
    NSMutableString *strMP = [strM copy];//内部调用了[strMP ratain]
    
    //正因为是进行了深拷贝，所以p对象进行copy的时候没有对p进行一次ratain
    [strMP release];
    
    [strM release];

    return 0;
}
