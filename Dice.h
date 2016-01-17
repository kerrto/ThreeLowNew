//
//  Dice.h
//  ThreeLowSaturday
//
//  Created by Kerry Toonen on 2016-01-16.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameController.h"

@interface Dice : NSObject

@property (nonatomic, strong) NSArray *diceLabels;
@property  (nonatomic, strong) NSString *one;
@property (nonatomic, strong) NSMutableArray *roll1;
@property (nonatomic, strong) NSMutableArray *rollArray11;
-(NSMutableArray *)rollArray1;
-(NSString *)randomDiceString;
-(void)roll;
@property (nonatomic, strong) NSString *heldDice;
@property (nonatomic) NSMutableArray *diceOnHold;
-(void)getHolds;
-(id)score;
-(void)checkDiceOnHold;
-(void)printHolds;
-(void)askForHolds;


@end
