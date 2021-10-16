//
//  Person.h
//  @class
//
//  Created by 黄念敏 on 2021/4/15.
//

#import <Foundation/Foundation.h>
@class Porsche;
NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic,retain) Porsche *porsche;

-(void)drive911:(Porsche*)drive911;
@end

NS_ASSUME_NONNULL_END
