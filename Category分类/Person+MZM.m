//
//  Person+MZM.m
//  category分类
//
//  Created by 黄念敏on 2021/4/16.
//

#import "Person+MZM.h"



@implementation Person (MZM)
-(void)laugh{
    //可以访问原类的属性
    NSLog(@"%s,%@",__func__,_name);
}
@end
