//
//  Person.m
//  匿名分类
//
//  Created by 黄念敏 on 2021/4/16.
//

#import "Person.h"


/*
 匿名分类：写在.m文件，没有名称的分类就是匿名分类
 作用：可以定义私有属性和方法
 注意：不可以重复.h文件已有的定义属性和方法，而且定义的方法和属性只有本类中可以使用，即定义的方法和属性为私有属性和方法
 */

//这就是一个匿名分类
@interface Person ()
{
    int i;
}
@property (nonatomic,strong) NSString *name01;
-(void)say;
@end



@implementation Person
-(void)say{
    NSLog(@"name = %@,name01= %@ ",_name,_name01);
}

@end
