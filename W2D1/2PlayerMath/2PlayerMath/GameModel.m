//
//  GameModel.m
//  2PlayerMath
//
//  Created by thomas minshull on 2016-07-04.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import "GameModel.h"


@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.player1 = [Player new];
        self.player2 = [Player new];
        self.currentPlayer = self.player1;
        self.currentQuestion = [Question new];
    }
    return self;
}

- (void)checkAnswer:(NSNumber *)answer {
    if ([answer isEqual:[self.currentQuestion getAnswer]]) {
        self.currentPlayer.score++;
        [self startNextTurn];
    } else {
        self.currentPlayer.lives--;
        [self startNextTurn];
    }
}

- (void)startNextTurn {
    if (self.currentPlayer == self.player1 && self.player2.lives > 0) {
        self.currentPlayer = self.player2;
    } else if (self.currentPlayer == self.player2 && self.player1.lives > 0) {
        self.currentPlayer = self.player1;
    } else {
        // game over!!
    }
    self.currentQuestion = [Question new];
}

- (BOOL)isGameOver {
    if (self.player1.lives <= 0 || self.player2.lives <= 0) {
        return TRUE;
    } else {
        return FALSE;
    }
}
@end
