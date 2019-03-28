//
//  SuperManager.h
//  TeSt
//
//  Created by bjb on 2019/3/27.
//  Copyright © 2019 cheshikeji. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SuperManager : NSObject

@property(nonatomic,copy)NSString *text;

+(instancetype) shareInstance;
+(void)net;
-(void)request;
-(void)request1;

@end

NS_ASSUME_NONNULL_END
