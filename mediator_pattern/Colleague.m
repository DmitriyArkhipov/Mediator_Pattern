//
//  Colleague.m
//  mediator_pattern
//
//  Created by Dmitriy Arkhipov on 20.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "Colleague.h"

@implementation Colleague

- (instancetype) initWithMediator:(id<IMediator>)mediator {

    self = [super init];
    
    if (self) {
        _mediator = mediator;
    }
    return self;

}

- (void) sendMessage:(NSString *)msg {
    
    [_mediator sendMessage:msg toColleague:self];
}

- (void) notifyMessage:(NSString *)msg {}

@end
