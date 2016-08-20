//
//  Customer.m
//  mediator_pattern
//
//  Created by Dmitriy Arkhipov on 21.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "Customer.h"

@implementation Customer

- (void) notifyMessage:(NSString *)msg {

    NSLog(@"Сообщение заказчику: %@", msg);

}

@end
