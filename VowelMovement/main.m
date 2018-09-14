//
//  main.m
//  VowelMovement
//
//  Created by YASSER ALTAMIMI on 14/09/2018.
//  Copyright © 2018 YASSER ALTAMIMI. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // array for the orignal string
        NSArray *orignal = @[@"Sauerkraut", @"Raygun",
                             @"Big Nerd Ranch", @"Mississippi"];
        
        // log the orignsl list
        NSLog(@"Orignal Strings: %@", orignal);
        
        // array for devoowelized strings
        NSMutableArray *devoowelizedStrings = [NSMutableArray array];
        
        // array for the list of the vowels
        NSArray *vowles = @[@"a", @"e", @"i", @"o", @"u"];
        
        // declare a block that will devoowelize strings and return it to the devoowelizedStrings array
        void(^devoowelizer)(id, NSUInteger, BOOL*);
        
        devoowelizer = ^(id string, NSUInteger i, BOOL *stop) {
            
            // create an NSMutableString to add the sting and adgust it in it
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            //iterate over the array of vowles and replace occurences of vowles with an empty string
            for (NSString *string in vowles) {
                
                // create a range of the length of the string
                NSRange range = NSMakeRange(0, [string length]);
                
                // replace the vowles with empty strings
                [newString replaceOccurrencesOfString:string
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:range];
            
            }
            
            // add the string to the devoowelizedStrings array
            [devoowelizedStrings addObject:newString];
            
        };
    }
    return 0;
}
