//
//  Tester.h
//  mediator_pattern
//
//  Created by Dmitriy Arkhipov on 21.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "Colleague.h"

@interface Tester : Colleague

- (void) notifyMessage:(NSString *)msg;

@end
