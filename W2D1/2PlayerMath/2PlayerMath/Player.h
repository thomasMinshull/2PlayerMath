//
//  Player.h
//  2PlayerMath
//
//  Created by thomas minshull on 2016-07-04.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Player : NSObject

@property (assign, nonatomic) int lives;
@property (assign, nonatomic) int score;

- (void)looseALife;
@end
