//
//  Manager.h
//  mediator_pattern
//
//  Created by Dmitriy Arkhipov on 21.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IMediator.h"
#import "Customer.h"
#import "Programmer.h"
#import "Tester.h"

@interface Manager : NSObject <IMediator>

//@property (strong, nonatomic) Customer *customer;
//@property (strong, nonatomic) Programmer *programmer;
//@property (strong, nonatomic) Tester *tester;

@property (strong, nonatomic) Colleague *customer;
@property (strong, nonatomic) Colleague *programmer;
@property (strong, nonatomic) Colleague *tester;

- (void) sendMessage:(NSString *)msg toColleague:(id)collegue;

@end
