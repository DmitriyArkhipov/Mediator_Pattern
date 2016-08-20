//
//  Programmer.m
//  mediator_pattern
//
//  Created by Dmitriy Arkhipov on 21.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "Programmer.h"

@implementation Programmer

- (void) notifyMessage:(NSString *)msg {

    NSLog(@"Сообщение программисту: %@", msg);

}

@end
