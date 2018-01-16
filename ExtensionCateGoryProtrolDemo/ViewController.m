//
//  ViewController.m
//  ExtensionCateGoryProtrolDemo
//
//  Created by apple on 2017/12/14.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "ViewController.h"
#import "Person+Run.h"
#import "Extension/Person+Eat.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person  *  Mryang  = [Person new];
    Mryang.name =  @"Mryang";
    Mryang.friendName =@"MrsLu";
    NSLog(@"%@",Mryang.name);
    NSLog(@"%@",Mryang.friendName);
    
    [Mryang logAge];
    [Mryang Run];
    [Mryang Eat];
    [Mryang Study];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
