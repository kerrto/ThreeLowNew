//
//  InputCollector.h
//  ThreeLowSaturday
//
//  Created by Kerry Toonen on 2016-01-17.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"

@interface InputCollector : NSObject

-(NSString *)inputForPrompt:(NSString *)promptString;

@end
