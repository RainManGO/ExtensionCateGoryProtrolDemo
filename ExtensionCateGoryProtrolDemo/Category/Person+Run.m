//
//  Person+Run.m
//  ExtensionCateGoryProtrolDemo
//
//  Created by apple on 2017/12/14.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "Person+Run.h"
#import <objc/runtime.h>

@implementation Person (Run)

-(void)Run{
    NSLog(@"Run");
}

-(void)setName:(NSString *)name{
    objc_setAssociatedObject(self, @"name", name,OBJC_ASSOCIATION_COPY_NONATOMIC);
}

-(NSString *)name{
    return objc_getAssociatedObject(self, @"name");
}

@end
