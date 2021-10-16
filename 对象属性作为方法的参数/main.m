//
//  main.m
//  对象属性作为方法的参数
//
//  Created by 黄念敏 on 2021/4/13.
//

#import <Foundation/Foundation.h>
#import "Soldier.h"

int main(int argc, const char * argv[]) {
    
    //弹夹
    Clip *c = [Clip new];
    c->_bullet = 100;
    
    //枪
    Gun *g = [Gun new];
    
    //枪装弹夹
    [g getClip:c];
    
    //士兵
    Soldier *s = [Soldier new];
    
    //士兵获得枪并开枪
    [s fireGun:g];
    
    return 0;
}
