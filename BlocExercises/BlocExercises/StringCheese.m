//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    
    NSString *bestCheese = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return bestCheese;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /* WORK HERE */
    
    NSString *withoutCheese = cheeseName;
    NSRange cheeseRange = [withoutCheese rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    if (cheeseRange.length == 0) {
        return cheeseName;
    }
    
    NSString *removeCheese = [withoutCheese stringByReplacingCharactersInRange:cheeseRange withString:@""];
    
    NSLog(@"removeCheese:%@", removeCheese);
    
    return removeCheese;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    /* WORK HERE */
    if (cheeseCount == 1)  {
        return @"1 cheese";
    }
    NSString *cheeseCountstatement = [NSString stringWithFormat: @"%ld cheeses", (long)cheeseCount];
    
    return cheeseCountstatement;

}
@end
