//
//  main.m
//  NSNumber
//
//  Created by 黄念敏 on 2021/4/26.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
 
    int i = 100;
    double d = 1.234;
    float f =1.333;
    bool  b = false;
    char  c = 'h';
    
    //NSNumber :把基本数据类型转换为对象类型
    
    //基本数据类型转对象类型
    NSNumber *iNumber =[NSNumber numberWithInt:i];
    NSNumber *dNumber =[NSNumber numberWithDouble:d];
    NSNumber *fNumber =[NSNumber numberWithFloat:f];
    NSNumber *bNumber =[NSNumber numberWithBool:b];
    NSNumber *cNumber =[NSNumber numberWithChar:c];
    
    //基本数据类型转对象类型（简写）
    //注意：1、变量转对象类型格式：@（基本数据类型变量名）
    //     2、常量转对象类型格式：@常量
    
    NSNumber *temp1 = @(i); //i为变量名
    NSNumber *temp2 = @100; //100为常量
    NSNumber *temp3 = @'c'; //'c'为常量
    
    NSLog(@"temp3 = %@",temp3);//
    
    NSArray *numberArr = @[iNumber,dNumber,fNumber,bNumber,cNumber];
    NSLog(@"numberArr = %@",numberArr);
    
    //NSNumber类型转基本数据类型
    int intTmp = [iNumber intValue];
    NSLog(@"intTmp = %i",intTmp);
    

    
    return 0;
}
