//
//  Car.m
//  ARC和MRC混编
//
//  Created by 黄念敏 on 2021/4/16.
//

#import "Car.h"

@implementation Car
-(void)dealloc{
    
    NSLog(@"%s",__func__);
    
    //mrc需要手动释放属性
    [_person release];
    [_number release];
    //还可以对属性赋值进行释放
    //_number = nil;
    
    //mrc重写dealloc方法必须调用父类的dealloc方法。arc不需要
    [super dealloc];
}
@end
