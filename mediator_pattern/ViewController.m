//
//  ViewController.m
//  mediator_pattern
//
//  Created by Dmitriy Arkhipov on 20.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "ViewController.h"
#import "Manager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Manager *mediator = [[Manager alloc] init];
    
    Colleague *customer = [[Customer alloc] initWithMediator:mediator];
    Colleague *programmer = [[Programmer alloc] initWithMediator:mediator];
    Colleague *tester = [[Tester alloc] initWithMediator:mediator];
    
    [mediator setCustomer:customer];
    [mediator setProgrammer:programmer];
    [mediator setTester:tester];
    
    [customer sendMessage:@"Есть заказ, надо сделать программу."];
    [programmer sendMessage:@"Программа готова, надо протестировать"];
    [tester sendMessage:@"Программа протестирована и готова к продаже"];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
