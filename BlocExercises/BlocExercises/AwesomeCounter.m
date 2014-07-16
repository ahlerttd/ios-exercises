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
    NSMutableString *updatedCount = [@"" mutableCopy];
    NSInteger count = number;
    NSInteger countOther = otherNumber;
    
    if (number < otherNumber){
    
    
    while (number <= otherNumber) {
        [updatedCount appendString: [NSString stringWithFormat:@"%ld", (long)count]];
        count = ++number;
        
    }
    }
    
        else if (otherNumber <= number) {
            while (otherNumber <= number) {
                [updatedCount appendString: [NSString stringWithFormat:@"%ld", (long)countOther]];
                countOther = ++otherNumber;
        }
            
    
    }
    
        else if (otherNumber == number) {
           
                [updatedCount appendString: [NSString stringWithFormat:@"%ld", (long)number]];
         
            
            
        }
    
    
    
    

   return updatedCount;
}

@end
