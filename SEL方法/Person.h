//
//  Person.h
//  SEL方法
//
//  Created by 黄念敏 on 2021/4/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property NSString *name;

-(void)test;
+(void)dome;

-(void)testValue1:(NSString*)value;
-(void)testValue1:(NSString*)value andValue2:(NSString*)value;

//该方法是获取获取对象obj的sel方法 并调用
-(void)testObj:(id)obj andSel:(SEL)sel;
@end

NS_ASSUME_NONNULL_END
