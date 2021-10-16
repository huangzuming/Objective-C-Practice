//
//  Person.h
//  多态
//
//  Created by 黄念敏 on 2021/4/13.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
-(void)food:(Animal*)animal;
@end

NS_ASSUME_NONNULL_END
