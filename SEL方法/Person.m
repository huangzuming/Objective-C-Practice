//
//  Person.m
//  SEL方法
//
//  Created by 黄念敏 on 2021/4/14.
//

#import "Person.h"

@implementation Person
-(void)test{
    NSLog(@"test");
}
+(void)dome{
    NSLog(@"dome");
}

-(void)testValue1:(NSString*)value{
    NSLog(@"testValue1:");
}
-(void)testValue1:(NSString*)value andValue2:(NSString*)value{
    NSLog(@"testValue1::");
}

-(void)testObj:(id)obj andSel:(SEL)sel{
    [obj performSelector:sel];
}

@end
