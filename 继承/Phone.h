//
//  Phone.h
//  继承
//
//  Created by 黄念敏 on 2021/4/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Phone : NSObject
{
    int _cpu;
}

-(void)sendMessage:(NSString *)contens toNumber:(NSString*)number;

+(void)logo;

-(void)callNumber:(NSString*)number;

+(void)caramePhotograph;

@end

NS_ASSUME_NONNULL_END
