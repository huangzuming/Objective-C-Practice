//
//  main.m
//  类工厂方法
//
//  Created by 黄念敏 on 2021/4/14.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    Person *p = [Person personWithName:@"mzmhzm"];
    
    NSLog(@"%@",p);
    
    
    return 0;
}
