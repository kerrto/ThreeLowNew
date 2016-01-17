//
//  Dice.m
//  ThreeLowSaturday
//
//  Created by Kerry Toonen on 2016-01-16.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(NSString *)randomDiceString {
    int result = arc4random_uniform(6) + 1;
    
    NSArray *diceLabels = @[@"⚀",@"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];
    
    NSString *one = [diceLabels objectAtIndex:result-1];
    
    return one;}

-(void)roll {
    
    NSMutableArray *rollArray11 = [[NSMutableArray alloc]init];
    [rollArray11 addObject:self.randomDiceString];
    [rollArray11 addObject:self.randomDiceString];
    [rollArray11 addObject:self.randomDiceString];
    [rollArray11 addObject:self.randomDiceString];
    [rollArray11 addObject:self.randomDiceString];

     NSLog(@"%@   %@   %@   %@   %@",rollArray11[0],rollArray11[1],rollArray11[2],rollArray11[3],rollArray11[4]);
   
    InputCollector *askForFirstMove = [[InputCollector alloc]init];
    
    NSString *askAboutHolds = @"Which dice would you like to hold (write one, two, three, four, or five[write all that apply seperated by spaces])";
    NSString *heldDice = [askForFirstMove inputForPrompt:askAboutHolds];
    
    NSMutableArray *diceOnHold=[[NSMutableArray alloc]init];
    
        if([heldDice isEqualToString:@"one"]) {
            [diceOnHold addObject:rollArray11[0]];
            [rollArray11 removeObjectAtIndex:0];}
        
        if([heldDice isEqualToString:@"two"]) {
            [diceOnHold addObject:rollArray11[1]];
            [rollArray11 removeObjectAtIndex:1];}
        
        if([heldDice isEqualToString:@"three"])  {
            [diceOnHold addObject:rollArray11[2]];
            [rollArray11 removeObjectAtIndex:2];}
        
        if([heldDice isEqualToString:@"four"]) {
            [diceOnHold addObject:rollArray11[3]];
            [rollArray11 removeObjectAtIndex:3];}
        
        if([heldDice isEqualToString:@"five"]) {
            [diceOnHold addObject:rollArray11[4]];
            [rollArray11 removeObjectAtIndex:4];}
    
    NSLog(@"%@   %@   %@   %@  [%@ ]",rollArray11[0],rollArray11[1],rollArray11[2],rollArray11[3],diceOnHold[0]);
}
//    
//    InputCollector *askForFirstMove2 = [[InputCollector alloc]init];
//    
//    NSString *askAboutContinue = @"Would you like to continue?(type yes)";
//    NSString *doesContinue = [askForFirstMove inputForPrompt:askAboutContinue];
//     BOOL DoesUserContinue = [doesContinue isEqualToString:@"yes"];
//    if (DoesUserContinue){
//        
//        
//        
//    }
//    
//    InputCollector *askForFirstMove2 = [[InputCollector alloc]init];
//    
//    NSString *askAboutHolds2 = @"Which dice would you like to hold (write one, two, three, four, or five[write all that apply seperated by spaces])";
//    NSString *heldDice2 = [askForFirstMove inputForPrompt:askAboutHolds];
//    
//    if([heldDice isEqualToString:@"one"]) {
//        [diceOnHold addObject:rollArray11[0]];
//        [rollArray11 removeObjectAtIndex:0];}
//    
//    if([heldDice isEqualToString:@"two"]) {
//        [diceOnHold addObject:rollArray11[1]];
//        [rollArray11 removeObjectAtIndex:1];}
//    
//    if([heldDice isEqualToString:@"three"])  {
//        [diceOnHold addObject:rollArray11[2]];
//        [rollArray11 removeObjectAtIndex:2];}
//    
//    if([heldDice isEqualToString:@"four"]) {
//        [diceOnHold addObject:rollArray11[3]];
//        [rollArray11 removeObjectAtIndex:3];}
//    
//    if([heldDice isEqualToString:@"five"]) {
//        [diceOnHold addObject:rollArray11[4]];
//        [rollArray11 removeObjectAtIndex:4];}
//    
//    
//    NSLog(@"%@   %@   %@   [%@ %@]",rollArray11[0],rollArray11[1],rollArray11[2],diceOnHold[0],diceOnHold[1]);
////    
////    InputCollector *askForFirstMove = [[InputCollector alloc]init];
////    
////    NSString *askAboutHolds = @"Which dice would you like to hold (write one, two, three, four, or five[write all that apply seperated by spaces])";
////    NSString *heldDice = [askForFirstMove inputForPrompt:askAboutHolds];
////    
////    NSMutableArray *diceOnHold=[[NSMutableArray alloc]init];
////    
////    if([heldDice isEqualToString:@"one"]) {
////        [diceOnHold addObject:rollArray11[0]];
////        [rollArray11 removeObjectAtIndex:0];}
////    
////    if([heldDice isEqualToString:@"two"]) {
////        [diceOnHold addObject:rollArray11[1]];
////        [rollArray11 removeObjectAtIndex:1];}
////    
////    if([heldDice isEqualToString:@"three"])  {
////        [diceOnHold addObject:rollArray11[2]];
////        [rollArray11 removeObjectAtIndex:2];}
////    
////    if([heldDice isEqualToString:@"four"]) {
////        [diceOnHold addObject:rollArray11[3]];
////        [rollArray11 removeObjectAtIndex:3];}
////    
////    if([heldDice isEqualToString:@"five"]) {
////        [diceOnHold addObject:rollArray11[4]];
////        [rollArray11 removeObjectAtIndex:4];}
////    
////    
////    NSLog(@"%@   %@   %@   %@  [%@ ]",rollArray11[0],rollArray11[1],rollArray11[2],rollArray11[3],diceOnHold[0]);
////
////    InputCollector *askForFirstMove = [[InputCollector alloc]init];
////    
////    NSString *askAboutHolds = @"Which dice would you like to hold (write one, two, three, four, or five[write all that apply seperated by spaces])";
////    NSString *heldDice = [askForFirstMove inputForPrompt:askAboutHolds];
////    
////    NSMutableArray *diceOnHold=[[NSMutableArray alloc]init];
////    
////    if([heldDice isEqualToString:@"one"]) {
////        [diceOnHold addObject:rollArray11[0]];
////        [rollArray11 removeObjectAtIndex:0];}
////    
////    if([heldDice isEqualToString:@"two"]) {
////        [diceOnHold addObject:rollArray11[1]];
////        [rollArray11 removeObjectAtIndex:1];}
////    
////    if([heldDice isEqualToString:@"three"])  {
////        [diceOnHold addObject:rollArray11[2]];
////        [rollArray11 removeObjectAtIndex:2];}
////    
////    if([heldDice isEqualToString:@"four"]) {
////        [diceOnHold addObject:rollArray11[3]];
////        [rollArray11 removeObjectAtIndex:3];}
////    
////    if([heldDice isEqualToString:@"five"]) {
////        [diceOnHold addObject:rollArray11[4]];
////        [rollArray11 removeObjectAtIndex:4];}
////    
////    
////    NSLog(@"%@   %@   %@   %@  [%@ ]",rollArray11[0],rollArray11[1],rollArray11[2],rollArray11[3],diceOnHold[0]);
////    
////    
////    InputCollector *askForFirstMove = [[InputCollector alloc]init];
////    
////    NSString *askAboutHolds = @"Which dice would you like to hold (write one, two, three, four, or five[write all that apply seperated by spaces])";
////    NSString *heldDice = [askForFirstMove inputForPrompt:askAboutHolds];
////    
////    NSMutableArray *diceOnHold=[[NSMutableArray alloc]init];
////    
////    if([heldDice isEqualToString:@"one"]) {
////        [diceOnHold addObject:rollArray11[0]];
////        [rollArray11 removeObjectAtIndex:0];}
////    
////    if([heldDice isEqualToString:@"two"]) {
////        [diceOnHold addObject:rollArray11[1]];
////        [rollArray11 removeObjectAtIndex:1];}
////    
////    if([heldDice isEqualToString:@"three"])  {
////        [diceOnHold addObject:rollArray11[2]];
////        [rollArray11 removeObjectAtIndex:2];}
////    
////    if([heldDice isEqualToString:@"four"]) {
////        [diceOnHold addObject:rollArray11[3]];
////        [rollArray11 removeObjectAtIndex:3];}
////    
////    if([heldDice isEqualToString:@"five"]) {
////        [diceOnHold addObject:rollArray11[4]];
////        [rollArray11 removeObjectAtIndex:4];}
////    
////    
////    NSLog(@"%@   %@   %@   %@  [%@ ]",rollArray11[0],rollArray11[1],rollArray11[2],rollArray11[3],diceOnHold[0]);
//
//}
//
//
////
////-(void)getHolds {
////
////    InputCollector *askForFirstMove = [[InputCollector alloc]init];
////    
////    NSString *askAboutHolds = @"Which dice would you like to hold (write one, two, three, four, or five[write all that apply seperated by spaces])";
////    NSString *userInput = [askForFirstMove inputForPrompt:askAboutHolds];
////    NSArray *heldDice = [userInput componentsSeparatedByString:@" "];
////    
////    NSMutableArray *diceOnHold=[[NSMutableArray alloc]init];
////    for (int i=0; i<[self.getHolds count]; i++) {
////        if([self.heldDice[i] isEqualToString:@"one"]) {
////        [self.diceOnHold addObject:self.rollArray1[0]];
////        [self.rollArray1 removeObjectAtIndex:0];}
////        
////         if([self.heldDice[i] isEqualToString:@"two"]) {
////             [self.diceOnHold addObject:self.rollArray1[1]];
////             [self.rollArray1 removeObjectAtIndex:1];}
////    
////                if([self.heldDice[i] isEqualToString:@"two"])  {
////                 [self.diceOnHold addObject:self.rollArray1[2]];
////                 [self.rollArray1 removeObjectAtIndex:2];}
////    
////            if([self.heldDice[i] isEqualToString:@"three"]) {
////                [self.diceOnHold addObject:self.rollArray1[3]];
////                [self.rollArray1 removeObjectAtIndex:3];}
////    
////        if([self.heldDice[i] isEqualToString:@"four"]) {
////            [self.diceOnHold addObject:self.rollArray1[4]];
////            [self.rollArray1 removeObjectAtIndex:4];} }
////}
////
////-(void)printHolds {
////    NSLog(@"%@   %@   %@   %@   %@ [%@   %@   %@   %@   %@]",self.rollArray1[0],self.rollArray1[1],self.rollArray1[2],self.rollArray1[3],self.rollArray1[4],self.diceOnHold[0],self.diceOnHold[1],self.diceOnHold[2],self.diceOnHold[3],self.diceOnHold[4]);
////}
////
////-(void)checkDiceOnHold {
////for (int i=0; i<[self.getHolds count]; i++)
////    NSLog(@"You are holding %@",self.diceOnHold[i]);}
////
////-(id)score {
////    NSMutableArray *scoreArray=[[NSMutableArray alloc]init];
////    for (int i=0; i<[self.getHolds count]; i++) {
////        if ([self.getHolds[i] containsObject:@"⚀"]){
////            [scoreArray addObject:@1];}
////        if ([self.getHolds[i] containsObject:@"⚁"]){
////            [scoreArray addObject:@2];}
////            if ([self.getHolds[i] containsObject:@"⚂"]){
////                [scoreArray addObject:@3];}
////                if ([self.getHolds[i] containsObject:@"⚃"]){
////                [scoreArray addObject:@4];}
////            if ([self.getHolds[i] containsObject:@"⚄"]){
////                [scoreArray addObject:@5];}
////            if ([self.getHolds[i] containsObject:@"⚅"]){
////                [scoreArray addObject:@6];}
////    }
////        id value = [scoreArray valueForKeyPath:@"@sum.self"];
////        NSLog(@"Your score is %@",value);
////        return value;
////}

@end


