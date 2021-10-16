//
//  Person.m
//  自动释放池
//
//  Created by 黄念敏 on 2021/4/16.
//

#import "Person.h"

@implementation Person
-(void)run{
    NSLog(@"%s",__func__);
}


-(void)dealloc{
    NSLog(@"%s",__func__);
    [super dealloc];
}
@end
