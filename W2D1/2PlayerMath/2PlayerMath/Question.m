//
//  Question.m
//  2PlayerMath
//
//  Created by thomas minshull on 2016-07-04.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init {
    self = [super init];
    if (self) {
//        self.firstNumber = [NSNumber numberWithInt:arc4random()];
//        self.secondNumber = [NSNumber numberWithInt:arc4random()];
        self.firstNumber = [NSNumber numberWithInt:arc4random_uniform(10)];
        self.secondNumber = [NSNumber numberWithInt:arc4random_uniform(10)];
    }
    return self;
}

- (NSString *)getQuestion {
    NSString *question = @"";
    question = [question stringByAppendingString:[self.firstNumber stringValue]];
    question = [question stringByAppendingString:@" + "];
    question = [question stringByAppendingString:[self.secondNumber stringValue]];
    return question;
}

- (NSNumber *)getAnswer {
    return [NSNumber numberWithDouble:[self.firstNumber doubleValue]+ [self.secondNumber doubleValue]];
}

@end
