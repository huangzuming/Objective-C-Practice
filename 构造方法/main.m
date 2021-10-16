//
//  main.m
//  构造方法
//
//  Created by 黄念敏 on 2021/4/14.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"


int main(int argc, const char * argv[]) {

    Person *p = [[Person alloc] initWithAge:30];
    
    NSLog(@"age = %i",p.age);
    
    
    Student  *s = [[Student alloc] initWithAge:@"mzm" andAge:25];
    
    
    NSLog(@"%@",s);
    
    return 0;
}
