//
//  Tester.m
//  mediator_pattern
//
//  Created by Dmitriy Arkhipov on 21.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "Tester.h"

@implementation Tester

- (void) notifyMessage:(NSString *)msg {
    
    NSLog(@"Сообщение тестеру: %@", msg);
    
}

@end
