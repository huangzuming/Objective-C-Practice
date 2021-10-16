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
-(void)setRoom:(Room*)room;
-(Room*)room;

@end

NS_ASSUME_NONNULL_END
