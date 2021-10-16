//
//  Singleton.h
//  OC练习20210412
//
//  Created by 黄念敏 on 2021/4/27.
//

#ifndef Singleton_h
#define Singleton_h


//对单例的部分内容进行抽取，利用宏定义减少每次创建单例类需要编写的代码


//.h文件中的宏定义
//用interfaceShare(name)替换后面的
#define interfaceShare(name) +(instancetype)share##name


#if __has_feature(objc_arc)
//ARC中会替换的代码

//.m文件的h宏定义 \ 的意思是下一行也是这一句的
#define implementationShare(name)\
static id _instance;\
+(instancetype)share##name{\
    return [[self alloc] init];\
}\
+(instancetype)allocWithZone:(struct _NSZone *)zone{\
    static dispatch_once_t onceToken;\
    dispatch_once(&onceToken, ^{\
        _instance = [super allocWithZone:zone];\
    });\
    return _instance;\
}\
- (nonnull id)copyWithZone:(nullable NSZone *)zone {\
    return _instance;\
}\
- (nonnull id)mutableCopyWithZone:(nullable NSZone *)zone {\
    return _instance;\
}



#else
//MRC中会替换的代码

#define implementationShare(name)\
static id _instance;\
+(instancetype)share##name{\
    return [[self alloc] init];\
}\
+(instancetype)allocWithZone:(struct _NSZone *)zone{\
    static dispatch_once_t onceToken;\
    dispatch_once(&onceToken, ^{\
        _instance = [super allocWithZone:zone];\
    });\
    return _instance;\
}\
- (nonnull id)copyWithZone:(nullable NSZone *)zone {\
    return _instance;\
}\
- (nonnull id)mutableCopyWithZone:(nullable NSZone *)zone {\
    return _instance;\
}\
-(oneway void)release{\
}\
-(instancetype)retain{\
    return _instance;\
}\
-(NSUInteger)retainCount{\
    return NSIntegerMax;\
}

//结束
#endif



#endif /* Singleton_h */
