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
        NSMutableArray *devoowelized = [NSMutableArray array];
        
        // array for the list of the vowels
        NSArray *vowles = @[@"a", @"e", @"i", @"o", @"u"];
        
    }
    return 0;
}
