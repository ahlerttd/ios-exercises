//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSDictionary *trekDrinks = characterDictionary;
    id  favoriteDrink = trekDrinks[@"favorite drink"];
    if (favoriteDrink != nil) {
        return favoriteDrink;
    }
    else return nil;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray *drinkFav = [NSMutableArray array];
    
    for (NSDictionary *drinks in charactersArray){
        if ([drinks valueForKey:@"favorite drink"] != nil){
            [drinkFav addObject: [drinks objectForKey: @"favorite drink"]];
        }
        
 //       NSMutableArray *drinkFav = [drinks objectForKey:@"favorite drink"];
    }
        return drinkFav;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *trekQuote = [characterDictionary mutableCopy];
    [trekQuote setObject:@"To be or not to be" forKey:@"quote"];
    return trekQuote;
}

@end
