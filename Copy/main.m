//
//  main.m
//  Copy和Property
//
//  Created by 黄念敏 on 2021/4/27.
//

#import <Foundation/Foundation.h>
#import "God.h"
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {

    /*
     copy的直接效果是将原对象进行一个 '拷贝', 创建出一个新的副本, 从而达到二者互不干扰的效果.
     oc中是支持两种拷贝，即copy和mutableCopy
     - copy:建立对象的副本
        1、如果对象有可变/不可变版本的区别，copy方法，只能拷贝出不可变的版本
        2、如果对象没有可变/不可变的区别，copy方法就是建立一个副本
     - mutableCopy:建立对象的可变副本
        1、如果对象有"可变/不可变"版本的区别，才需要使用此方法
     
     副本：彼此的内容一样，具有相同的方法
     
     由于我们的 "拷贝" 操作需要区分 可变/不可变 .于是引出了关于 深拷贝&浅拷贝 的问题
     深拷贝：拷贝内容，并创建一个新的对象
     浅拷贝：拷贝指针，指向啊同一个对象
     
     终极结论：
     copy的目的是让原对象和副本二者互不干扰的效果
     所以无论什么拷贝，只要看是否需要生成新的对象，就可以判断深浅拷贝
     
     如：
     不可变copy: 因为不可变对象本身就无法进行改变操作，所以无需创建新的对象  -->浅拷贝
     不可变mutableCopy: 不可变转换为可变，类型发生转换，所以需要创建新的对象 -->深拷贝
     可变copy: 可变转不可变，类型发生转换，所以需要创建新的对象 -->深拷贝
     可变mutableCopy: 因为可变本身可以进行改变操作，所以需要创建新的对象 -->深拷贝
     
    */
#pragma mark - copy 修饰NSString
     //copy作为修饰符的第一个用途，防止对象内部数据被修改
    God *g = [[God alloc] init];
    
    NSMutableString *strName = [NSMutableString stringWithFormat:@"hzm"];
    NSMutableString *strWife = [NSMutableString stringWithFormat:@"mzm"];
    NSMutableString *strDaughter = [NSMutableString stringWithFormat:@"hyx"];
    
    g.name = strName;//name被copy修饰
    g.wife = strWife;//wife被strong修饰
    g.daughter =strDaughter;//daughter被assign修饰
    
    NSLog(@"%@",g);//打印：[God description],name =hzm,wife=mzm,daughter=hyx
    
    [strName setString:@"HZM"];
    [strWife setString:@"MZM"];
    [strDaughter setString:@"HYX"];
    
    NSLog(@"%@",g);//打印：[God description],name =hzm,wife=MZM,daughter=HYX
    
    //结论：
    //被assign修饰的daughter因为strDaughter被修改了，daughter也跟着被修改了
    //所以用peoperty创建字符串需要使用copy修饰
    //利用的原理：不可变copy可变，需要生成新对象，从而做到相互不被影响
    
#pragma mark - copy 修饰Block
    /*
     原因：
     block 默认存储在栈中，当block访问到外部对象，是不会对对应对象就行retain
     block存储在堆中，当block访问了外部对象，是会对外界对象进行一次retain
     所以在mrc中需要用函数Block_copy(blockName)把block转移到堆中
     
     作用：
     1、所以在用property声明block的时候要使用copy修饰符，其作用就是把block转移到堆中
     2、如果这个block中访问了对象自己，为了避免内存泄露，需要把这个对象声明前面加上修饰符__block
        如：__block God *g = [[God alloc] init];
     */

    
#pragma mark - 在定义对象进行copy/mutableCopy操作
     /*
      对自定义对象进行copy/mutableCopy操作
        1、对象遵守<NSCopying,NSMutableCopying>协议
        2、重写协议的方法：copyWithZone:和mutableCopyWithZone:
        3、在上面的两个方法内，创建一个副本对象，并把当前对象的值赋值给副本
      */
    Person *p =[[Person alloc] init];
    p.age = 27;
    p.name = @"hzm";
    
    Person *pp = [p copy];//产生了新对象，所以p的引用计数器不会加1
    
    NSLog(@"pp.age = %i , pp.name = %@",pp.age,pp.name);

    //copy在继承中的注意点：自己的事情自己做，谁最清楚的事情谁去做
    Student *s =[[Student alloc] init];
    s.age = 27;
    s.name = @"hzm";
    s.height = 175.5;
    
    Student *ss =[s mutableCopy];
    
    NSLog(@"ss.age = %i , ss.name = %@ ,ss.heigth = %f",ss.age,ss.name,ss.height);
    
    return 0;
}
