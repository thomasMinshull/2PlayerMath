//
//  GameModel.h
//  2PlayerMath
//
//  Created by thomas minshull on 2016-07-04.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"
#import "Question.h"

@interface GameModel : NSObject

@property (strong, nonatomic)Player *player1;
@property (strong, nonatomic)Player *player2;
@property (strong, nonatomic)Player *currentPlayer;
@property (strong, nonatomic)Question *currentQuestion;

- (void)checkAnswer:(NSNumber *)answer;
- (BOOL)isGameOver;

@end
