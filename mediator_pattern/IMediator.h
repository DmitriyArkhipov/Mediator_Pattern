//
//  IMediator.h
//  mediator_pattern
//
//  Created by Dmitriy Arkhipov on 20.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 Mediator: представляет интерфейс для взаимодействия с объектами Colleague
 */
@protocol IMediator <NSObject>

- (void) sendMessage:(NSString *)msg toColleague:(id)collegue;

@end
