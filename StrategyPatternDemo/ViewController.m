//
//  ViewController.m
//  StrategyPatternDemo
//
//  Created by zhulin on 2018/6/29.
//  Copyright © 2018年 zhulin. All rights reserved.
//

#import "ViewController.h"
#import "Strategy.h"
#import "Farmer.h"
#import "Worker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self makeMoney:[[Farmer alloc] init]];
    [self makeMoney:[[Worker alloc] init]];
}
-(void)makeMoney:(id)theStrategy
{
    Strategy * strategy = theStrategy;
    [strategy makeMoney];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
