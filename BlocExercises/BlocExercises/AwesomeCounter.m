//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */

    
    NSMutableString *numbersString = [@"" mutableCopy];
    NSInteger lowBound = (number <= otherNumber) ? number : otherNumber;
    NSInteger highBound = (number <= otherNumber) ? otherNumber : number;
    for (NSInteger i = lowBound; i <= highBound; ++i) {
        NSString *nextNumberString = [NSString stringWithFormat:@"%ld", (long)i];
        [numbersString appendString:nextNumberString];
    }
    return numbersString;
    

}

@end
