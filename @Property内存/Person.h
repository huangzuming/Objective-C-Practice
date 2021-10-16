//
//  Person.h
//  MRC练习
//
//  Created by 黄念敏 on 2021/4/14.
//

#import <Foundation/Foundation.h>
#import "Room.h"
NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    Room *_room;
}

//使用retain修饰符后 getting和setting方法内会自动生成内存管理代码
//注意：就算是自定义的setting和getting方法 只要是用retain修饰过的变量也会自动生成内存管理代码
@property (nonatomic,retain) Room *room;

@end

NS_ASSUME_NONNULL_END
