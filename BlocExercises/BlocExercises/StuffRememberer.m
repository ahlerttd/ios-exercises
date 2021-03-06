//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.rememberStuff = arrayToRemember;
    
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.rememberCopy = arrayToRemember;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    self.rememberFloat = floatToRemember;
}


- (NSMutableArray *) arrayYouShouldRemember {
    NSMutableArray  *shouldRemember = self.rememberStuff;
    return shouldRemember;
}

- (NSMutableArray *) arrayYouShouldCopy {
    NSMutableArray *shouldCopy = [self.rememberCopy mutableCopy];
    return shouldCopy;
}

- (CGFloat) floatYouShouldRemember {
    return self.rememberFloat;
}

@end