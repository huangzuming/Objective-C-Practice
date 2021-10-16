//
//  Person.m
//  @class
//
//  Created by 黄念敏 on 2021/4/15.
//

#import "Person.h"
#import "Porsche.h"

@implementation Person
-(void)drive911:(Porsche*)drive911{
    _porsche = drive911;
    NSLog(@"开保时捷911");
}
@end
