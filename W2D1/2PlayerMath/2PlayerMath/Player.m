//
//  Player.m
//  2PlayerMath
//
//  Created by thomas minshull on 2016-07-04.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init {
    self = [super init];
    if (self) {
        self.lives = 3;
        self.score = 0;
    }
    return self;
}

- (void)looseALife {
    self.lives --;
}

@end
