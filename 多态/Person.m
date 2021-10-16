//
//  Person.m
//  多态
//
//  Created by 黄念敏 on 2021/4/13.
//

#import "Person.h"

@implementation Person
-(void)food:(Animal*)animal{
    //对应动物吃东西
    [animal eat];
}
@end
