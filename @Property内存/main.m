//
//  main.m
//  Property和内存关系
//
//  Created by 黄念敏 on 2021/4/28.
//

#import <Foundation/Foundation.h>

#import "Person.h"
#import "Room.h"

int main(int argc, const char * argv[]) {

    //内存管理原则：一个alloc对应一个release  一个retain对应于一个release
    Person *p1 = [[Person alloc] init];
    Room *r1 = [[Room alloc] init];
    
    r1.Number = 888;//设置房号
    p1.room = r1; //p的room指向了r1
    
    
    //换房间
    Room *r2 = [[Room alloc] init];
    r2.Number = 999;//设置房号
    p1.room = r2; //p的room指向了r1

    [r1 release];
    [r2 release];
    [p1 release];
    return 0;
}
