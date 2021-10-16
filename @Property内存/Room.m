//
//  Room.m
//  MRC练习
//
//  Created by 黄念敏 on 2021/4/15.
//

#import "Room.h"

@implementation Room
-(void)setNumber:(int)number{
    _number = number;
}

-(int)Number{
    return _number;
}
-(void)dealloc{
    NSLog(@"Room dealloc");
    [super dealloc];
}
@end
