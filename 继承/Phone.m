//
//  Phone.m
//  继承
//
//  Created by 黄念敏 on 2021/4/13.
//

#import "Phone.h"

@implementation Phone
-(void)sendMessage:(NSString *)contens toNumber:(NSString*)number{
    NSLog(@"发%@给%@",contens,number);
}
+(void)logo{
    NSLog(@"logo");
}
-(void)callNumber:(NSString*)number{
    NSLog(@"用电话打给%@",number);
}

+(void)caramePhotograph{
    NSLog(@"拍照");
}
@end
