//
//  Colleague.h
//  mediator_pattern
//
//  Created by Dmitriy Arkhipov on 20.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IMediator.h"
/**
Colleague: представляет интерфейс для взаимодействия с объектом Mediator
 */
@interface Colleague : NSObject

@property (strong, nonatomic) id<IMediator> mediator;

- (instancetype) initWithMediator:(id<IMediator>)mediator;

- (void) sendMessage:(NSString *)msg;

/**
 Абстрактный метод оповещения
 */
- (void) notifyMessage:(NSString *)msg;

@end
