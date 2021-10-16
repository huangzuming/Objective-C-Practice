//
//  main.m
//  @autoreleasepool
//
//  Created by 黄念敏 on 2021/4/28.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    
    /*
     自动释放池用途：自动生成一次release，延长释放时间
     
     自动释放池原理：
     只要对象在@autoreleasepool的大括号中调用了autorelease，系统就会把对象放到释放池中，当自动释放池被销毁时，释放池会自动对池内的对象进行一次release，因此即使放到释放池也不一定被释放
     
     使用释放池注意点：
          0、对象创建和使用必须在释放池内，即在@autoreleasepool的大括号中
          1、oc中绝大多数类工厂方法内部都调用了autoreleasepool，所以不用再手动调用
          2、对象必须调用autorelease方法才能把对象放进释放池（该方法会返回调用的对象的地址）
          3、程序可以有多个释放池,而且还能相互嵌套
          4、不适宜在释放池内存放内存较大的对象
          5、释放池是以栈的形式进入内存的，所以是先进后出（嵌套使用的时候在最外面的最后释放）
          6、一个对象不能进行多次autorelease，不然会出现过度释放
          7、如果对象进行了一次retain 自动释放池可能无法释放对象
          8、在释放池中对象数组添加对象元素时会对对象进行一次retain 取出时会对对象元素进行一次release
    */
    
    //自动释放池写法一（主流）：
    @autoreleasepool {
        Person *p = [[[Person alloc] init] autorelease];
        
        [p run];
    }
    
    
    //自动释放池写法二（过时）：
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    Person *p2 = [[[Person alloc] init] autorelease];
    
    [p2 run];
    
    [pool release];
    
    
    //自动释放池嵌套使用
    @autoreleasepool {
        @autoreleasepool {
            @autoreleasepool {
                Person *p3 = [[[Person alloc] init] autorelease];
                [p3 run];
            }
        }
    }
    
    
    return 0;
}

