//
//  Question.h
//  2PlayerMath
//
//  Created by thomas minshull on 2016-07-04.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Question : NSObject

@property (strong, nonatomic) NSNumber *firstNumber;
@property (strong, nonatomic) NSNumber *secondNumber;
//@property (strong, nonatomic) NSOperation *operation;

- (NSString *)getQuestion;
- (NSNumber *)getAnswer;

@end
