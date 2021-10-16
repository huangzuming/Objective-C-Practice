//
//  Person.m
//  MRC练习
//
//  Created by 黄念敏 on 2021/4/14.
//

#import "Person.h"

@implementation Person
-(void)setRoom:(Room*)room{
    if (room != _room) {
        //有人获得了房间（有指针指向了room） 所以需要对房间的计数器+1（retainCount+1）
        //[room retain];
        //_room = room;
        
        _room = [room retain];//retain方法会返回调用它的对象
    }
   
}
-(Room*)room{
    return _room;
}
-(void)dealloc{
   
    [_room release]; //退房（retainCount+1） 就算是没有开房间成功空指针发消息也不会报错
  
    NSLog(@"Person dealloc");
    [super dealloc];
}
@end
