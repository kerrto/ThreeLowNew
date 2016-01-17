//
//  main.m
//  ThreeLowSaturday
//
//  Created by Kerry Toonen on 2016-01-16.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputCollector.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {


    InputCollector *firstLine = [[InputCollector alloc]init];
    
    NSString *welcomeLine = @"Welcome to Three Low! Would you like to continue?y/n\n";
    NSString *userInput = [firstLine inputForPrompt:welcomeLine];
    
    if([userInput isEqualToString:@"y"]) {
       
        Dice *firstRoll =[[Dice alloc]init];
        [firstRoll roll];
//        [firstRoll getHolds];
//        [firstRoll printHolds];
    }
        
        
        
        
        
//Dice *secondRoll =[[Dice alloc]init];
//      [secondRoll roll];
//            
//            
//Dice *thirdRoll =[[Dice alloc]init];
//    [thirdRoll roll];
//Dice *fourthRoll =[[Dice alloc]init];
//    [fourthRoll roll];
//Dice *fifthRoll =[[Dice alloc]init];
//    [fifthRoll roll];
        }
