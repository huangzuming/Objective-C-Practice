//
//  main.m
//  常用结构体
//
//  Created by 黄念敏 on 2021/4/26.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    //位置 CGPoint == NSPoint
    CGPoint point =NSMakePoint(100, 100);
    
    
    //尺寸 CGSize ==NSSize
    CGSize size = NSMakeSize(100, 1000);
    
    
    //位置和尺寸 CGRect == NSRect
    CGRect rect = NSMakeRect(100, 100, 100, 100);
    
    //注意：苹果公司建议平时使用CG开头的结构体
    
    
    return 0;
}
