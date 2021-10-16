//
//  File.h
//  单例
//
//  Created by 黄念敏 on 2021/4/27.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"

NS_ASSUME_NONNULL_BEGIN

@interface File : NSObject

//+(instancetype)interfaceShareFile;
//替换了上面的
interfaceShare(File);



@end

NS_ASSUME_NONNULL_END
