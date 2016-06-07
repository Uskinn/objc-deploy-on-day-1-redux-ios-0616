//
//  FISComputerPlayer.m
//  DeployOnDay1Redux
//
//  Created by Timothy Clem on 9/22/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISComputerPlayer.h"

@implementation FISComputerPlayer

+(BOOL)isEnabled
{
    return YES;
}

-(FISTicTacToePosition)nextPlay
{
  /*
    NSArray *positions = @[@[@0, @0],
                           @[@0, @1],
                           @[@0, @2],
                           @[@1, @0],
                           @[@1, @1],
                           @[@1, @2],
                           @[@2, @0],
                           @[@2, @1],
                           @[@2, @2]];
    
    NSUInteger row;
    NSUInteger col;
     do {
         // pick a random number between 0 and 8
         NSUInteger randomPosition = arc4random_uniform(9);
         
         // grab random array from positions array
         NSArray *position = positions[randomPosition];
         
         // get column and row locations from position array
         row = (NSUInteger)[position[0] integerValue];
         col = (NSUInteger)[position[1] integerValue];
     
     } while (![self.game canPlayAtColumn:col row:row]);  //canPlay is equal to NO
     return FISTicTacToePositionMake(col, row);
   
 
*/
 
    
    NSUInteger column;
    NSUInteger row;
    
    do{
        column = arc4random_uniform(3);
        row = arc4random_uniform(3);
    } while (![self.game canPlayAtColumn:column row:row]);
    return FISTicTacToePositionMake(column, row);

}
@end
