//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    return @([number integerValue] + [number integerValue]);
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableArray *numberOrder = [NSMutableArray array];
    NSInteger lowBound = (number <= otherNumber) ? number : otherNumber;
    NSInteger highBound = (number <= otherNumber) ? otherNumber : number;
    for (NSInteger i = lowBound; i <= highBound; ++i) {
        [numberOrder addObject:[NSNumber numberWithInt:i]];
    }
    return numberOrder;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    
    NSMutableArray *list = [arrayOfNumbers mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    [list sortUsingDescriptors:@[sortDescriptor]];
    return [list[0] longValue];
}

@end
