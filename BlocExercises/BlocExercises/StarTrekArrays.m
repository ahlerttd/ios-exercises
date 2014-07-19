//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    
    NSArray *trekNamesArray = [characterString componentsSeparatedByString:@";"];
    
    return @[trekNamesArray];
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSString *trekString = [characterArray componentsJoinedByString:@";"];
    
    
    return trekString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSMutableArray *mutableTrek = [@[characterArray] mutableCopy];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [mutableTrek sortUsingDescriptors:@[sortDescriptor]];
    return @[mutableTrek];
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    
   NSMutableArray *mutableWorf = [@[characterArray] mutableCopy];
    
   NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[c] 'W'"];
   [mutableWorf filterUsingPredicate:containsWorf];

    NSString *worfString = [mutableWorf componentsJoinedByString:@""];
    
    if([worfString hasPrefix:@"Worf"])
        return YES;
    else return NO;
    
    


    
}

@end
