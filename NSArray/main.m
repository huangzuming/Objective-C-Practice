//
//  main.m
//  NSArray
//
//  Created by 黄念敏 on 2021/4/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    /*
     
     OC数组特点：
     1、只能保存对象类型，不能直接保存基本数据类型
     2、一个数组可以保存多种对象类型，或间接保存多种基本数据类型
     3、NSArray是不可变的，对其的一系列操作基本都会返回一个新的数组
     
     
     */
    
    
    //数组创建
    
    //这两种创建的数组毫无意义，因为NSArray是不可变的
    //NSArray *arr01 = [NSArray array];
    //NSArray *arr02 = [[NSArray alloc] init];
    
    
    //经常使用的创建
    NSArray *arr03 = [NSArray arrayWithObject:@"hzmmzm"];//创建只有一个元素的数组
    NSArray *arr04 = [NSArray arrayWithObjects:@"hzm",@"mzm", nil];//创建一个含有多个元素的数组
    NSArray *arr05 = [NSArray arrayWithArray:arr04];//根据一个数组创建一个新数组
    NSLog(@"arr03地址：%p=%@",arr03,arr03);
    NSLog(@"arr04地址：%p=%@",arr04,arr04);
    NSLog(@"arr05地址：%p=%@",arr05,arr05);
    //注意：这里的nil是数组创建结束的符号，创建的时候遇到nil就会停止添加元素进数组并返回创建好的数组
    
    //最简单的创建
    NSArray *arr06 =@[@"my",@"love",@"how",@"will",@"end"];
    NSLog(@"arr06地址：%p=%@",arr06,arr06);
    
    //获取元素个数
    NSLog(@"arr06的元素个数为%lu",[arr06 count]);
    
    //获取元素内的元素
    NSLog(@"arr06的第3个元素%@",[arr06 objectAtIndex:3]);//下标为0开始
    //获取第首个或末尾的元素
    NSLog(@"arr06的首个元素%@",[arr06 firstObject]);
    NSLog(@"arr06的末尾的元素%@",[arr06 lastObject]);
    
    //最简单的获取
    NSLog(@"最简单的获取arr06首里的元素%@",arr06[0]);//和c语言一样
    
    
    //判断数组内是否含有某一个元素
    if (![arr06 containsObject:@"hzm"]) {
        NSLog(@"arr06中没有字符串hzm");
    }
    
    //数组遍历1
    for (int i = 0; i<arr06.count; i++) {
        NSLog(@"arr6[%i]=%@",i,arr06[i]);
    }
    NSLog(@"");
    //数组遍历2
    for (id object in arr06) {
        NSLog(@"arr6=%@",object);
    }
    NSLog(@"");

    
    //数组遍历3
    //obj:传回来数组内的一个对象
    //idx:返回索引
    //*stop：用于遍历的终止,正常情况下每一次遍历都是NO，当被赋值为YES的时候终止下轮遍历(注意：stop前面带*号)
    [arr06 enumerateObjectsUsingBlock:^(NSString *obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"arr6[%lu]=%@",idx,obj);
        if ([obj isEqualToString:@"how"]) {
            *stop = YES;
        }
    }];
    
    //如果数组保存了对象，可以对该数组内的元素都掉用同一个方法
    //[arr06 makeObjectsPerformSelector:@selector(各对象都有的方法)];
    //[arr06 makeObjectsPerformSelector:@selector(各对象都有的方法) withObject:(形参1)];//只能是只有一个形参的
    //注意：一定要所有元素对象都有这个方法，不如会出现无法识别的消息
    
    
    //简单排序(按ASSCII码排序，排序方法是二分法)
    //sortedArrayUsingSelector: 返回一个数组，并通过给定的比较方法来接收排序后的元素
    //compare： 方法只能对Foundation的对象类型的数据进行比较(默认是升序)，也就是自定义的对象不能使用，因为只有Foundation的对象类型有这个方法
    NSArray *arr07 =@[@"1",@"2",@"3",@"4",@"5"];
    NSLog(@"arr07排序后：%@",[arr07 sortedArrayUsingSelector:@selector(compare:)]);
    
    
    
    
    //简单利用block排序（可以自定义排序方法，可以对自定义对象进行排序）
    //NSComparisonResult：标示升降序的
    //sortedArrayWithOptions字面意思：带选项的排序数组
    NSArray *arr08  = [arr07 sortedArrayWithOptions:NSSortStable usingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        NSLog(@"obj1 = %@ || obj2 = %@",obj1,obj2);
        NSComparisonResult result = [obj1 compare:obj2];
        return result ;
    }];
    NSLog(@"arr08%@",arr08);
    
    //高级排序1（常用）
    //sortedArrayUsingComparator字面意思：使用比较器排序数组
    NSArray *arr09 =[arr07 sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        NSLog(@"obj1 = %@ || obj2 = %@",obj1,obj2);
        NSComparisonResult result = [obj1 compare:obj2];
        return result;
    }];
    NSLog(@"arr09%@",arr09);
    
    //高级排序2
    //sortedArrayUsingDescriptors字面意思：使用描述符排序的数组
    //[arr07 sortedArrayUsingDescriptors:(nonnull NSArray<NSSortDescriptor *> *)]
    
    return 0;
}
