//
//  Manager.m
//  mediator_pattern
//
//  Created by Dmitriy Arkhipov on 21.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "Manager.h"

@implementation Manager

- (void) sendMessage:(NSString *)msg toColleague:(id)collegue {

    if (![collegue isKindOfClass:[Colleague class]]) {
        return;
    }

    
    // если отправитель - заказчик, значит есть новый заказ
    // отправляем сообщение программисту - выполнить заказ
    if ([collegue isKindOfClass:[Customer class]]) {
        
        [_programmer notifyMessage:msg];
        
        
    // если отправитель - программист, то можно приступать к тестированию
    // отправляем сообщение тестеру
    } else if ([collegue isKindOfClass:[Programmer class]]) {
        
        [_tester notifyMessage:msg];
    
        
    // если отправитель - тест, значит продукт готов
    // отправляем сообщение заказчику
    } else if ([collegue isKindOfClass:[Tester class]]) {
        
        [_customer notifyMessage:msg];
        
    }



}

@end
