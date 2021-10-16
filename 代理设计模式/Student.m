//
//  Student.m
//  代理设计模式
//
//  Created by 黄念敏 on 2021/4/22.
//

#import "Student.h"


@implementation Student
-(void)LearnEnglish{
    if ([self.delegate respondsToSelector:@selector(studentUnderstandEnglish:)]) {
        [self.delegate studentUnderstandEnglish:self];
        NSLog(@"学习英语");
    }
    
}
@end
