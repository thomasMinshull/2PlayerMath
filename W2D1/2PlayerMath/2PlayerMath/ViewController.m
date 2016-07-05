//
//  ViewController.m
//  2PlayerMath
//
//  Created by thomas minshull on 2016-07-04.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import "ViewController.h"
#import "GameModel.h"

#define PLAYER1_SCORE_LABEL_STRING [@"Player1 Score: " stringByAppendingString:[NSString stringWithFormat:@"%d Lives Left: %d", self.game.player1.score, self.game.player1.lives]]
#define PLAYER2_SCORE_LABEL_STRING [@"Player2 Score: " stringByAppendingString:[NSString stringWithFormat:@"%d Lives Left: %d", self.game.player2.score, self.game.player2.lives]]
#define PLAYER1_QUESTION_LABEL_STRING [@"Player1: " stringByAppendingString:[self.game.currentQuestion getQuestion]]
#define PLAYER2_QUESTION_LABEL_STRING [@"Player2: " stringByAppendingString:[self.game.currentQuestion getQuestion]]

@interface ViewController ()

@property (strong, nonatomic)GameModel *game;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.game = [GameModel new];
    
    [self.player1ScoreLabel setText:PLAYER1_SCORE_LABEL_STRING];
    [self.player2ScoreLabel setText:PLAYER2_SCORE_LABEL_STRING];
    [self.questionLabel setText:PLAYER1_QUESTION_LABEL_STRING];
}

- (IBAction)clearButtonTapped:(id)sender {
    [self.answerTextField setText:@""];
}

- (IBAction)numberButtonTapped:(UIButton *)sender {
    NSString *newString = [self.answerTextField.text stringByAppendingString:sender.currentTitle];
    [self.answerTextField setText:newString];
}

- (IBAction)submit:(id)sender {
    
    if (![self.game isGameOver]) {
        
        if (![self.answerTextField.text isEqualToString:@""]) {
            [self.game checkAnswer:[NSNumber numberWithDouble:[self.answerTextField.text doubleValue]]];
            [self.player1ScoreLabel setText:PLAYER1_SCORE_LABEL_STRING];
            [self.player2ScoreLabel setText:PLAYER2_SCORE_LABEL_STRING];
            [self clearButtonTapped:nil];
            
            if ([self.game isGameOver]) {
                [self.questionLabel setText:@"GAME OVER!"];
            } else {
                [self.questionLabel setText:[self.game.currentQuestion getQuestion]];
                if (self.game.currentPlayer == self.game.player1) {
                    [self.questionLabel setText:PLAYER1_QUESTION_LABEL_STRING];
                } else {
                    [self.questionLabel setText:PLAYER2_QUESTION_LABEL_STRING];
                }
            }
        }

    }
  
    
}



@end
