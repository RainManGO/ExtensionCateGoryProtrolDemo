//
//  Person.m
//  ExtensionCateGoryProtrolDemo
//
//  Created by apple on 2017/12/14.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>

//这也是类扩展
@interface Person ()

@property(nonatomic,assign) int age;

@end

@implementation Person

-(void)logAge{
    self.age = 18;
    NSLog(@"%d",self.age);
}

-(void)Eat{
    NSLog(@"Eat");
}

-(void)Study{
    NSLog(@"Study");
}

-(void)setFriendName:(NSString *)name{
    objc_setAssociatedObject(self, @"friendName", name,OBJC_ASSOCIATION_COPY_NONATOMIC);
}

-(NSString *)friendName{
    return objc_getAssociatedObject(self, @"friendName");
}

@end
