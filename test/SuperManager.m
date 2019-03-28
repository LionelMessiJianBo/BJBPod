//
//  SuperManager.m
//  TeSt
//
//  Created by bjb on 2019/3/27.
//  Copyright © 2019 cheshikeji. All rights reserved.
//

#import "SuperManager.h"

@implementation SuperManager

static SuperManager* instance = nil;

+(instancetype) shareInstance
{
    static dispatch_once_t onceToken ;
    dispatch_once(&onceToken, ^{
        
        instance = [[super allocWithZone:NULL] init];
        NSLog(@"instance:%@",instance);
    }) ;
    return instance ;
}
+(id) allocWithZone:(struct _NSZone *)zone
{
    
    return [SuperManager shareInstance] ;
}
-(id) copyWithZone:(struct _NSZone *)zone
{
    
    return [SuperManager shareInstance] ;
}
-(void)request{
    
}
+ (void)net{
    NSLog(@"superNet");
}
@end
