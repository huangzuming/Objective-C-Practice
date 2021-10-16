//
//  God.m
//  Copy和Property
//
//  Created by 黄念敏 on 2021/4/27.
//

#import "God.h"

@implementation God
-(NSString *)description{
    return [NSString stringWithFormat:@"%s,name =%@,wife=%@,daughter=%@",__func__,_name,_wife,_daughter];
}
@end
