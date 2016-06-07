//
//  FISTicTacToeGame.m
//  DeployOnDay1Redux
//
//  Created by Timothy Clem on 9/22/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISTicTacToeGame.h"

@interface FISTicTacToeGame ()



@end


@implementation FISTicTacToeGame

-(instancetype)init
{
    self = [super init];
    if(self) {
        // Do initialization of your game here, inside this if statement.
        // Leave the rest of this method alone :)
        [self resetBoard];
        
    }

    return self;
}

-(void)resetBoard{
    
   self.board = [[NSMutableArray alloc]init];
    
    [self.board insertObject:[@[@"", @"", @""] mutableCopy] atIndex:0];
    [self.board insertObject:[@[@"", @"", @""] mutableCopy] atIndex:1];
    [self.board insertObject:[@[@"", @"", @""] mutableCopy] atIndex:2];
    
    
                    
}

-(NSString *)playerAtColumn:(NSUInteger)column row:(NSUInteger)row{
    
//    NSLog(@"\n\nplayerAtColumn: %lu, row: %lu\nplayer piece: %@\n\n", column, row, self.board[row][column]);
//    NSString *player = self.board[row][column];
    return self.board[row][column];
}

-(BOOL)canPlayAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    if ([self.board[row][column] isEqual: @""]) {
        return YES;
    } else {
        return NO;
    }
}

-(void)playXAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    self.board[row][column] = @"X";// give it a value
}

-(void)playOAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    self.board[row][column] = @"O";
}

-(NSString *)winningPlayer
{
    if ([self.board[0]  isEqual: @[@"X", @"X", @"X"]]){
        return @"X";
        
    } else if ([self.board[1]  isEqual: @[@"X", @"X", @"X"]]){
        return @"X";
        
    } else if ([self.board[2]  isEqual: @[@"X", @"X", @"X"]]){
        return @"X";
        
    } else if ([self.board[0][0] isEqual: @"X"] && [self.board[1][1] isEqual: @"X"] && [self.board[2][2] isEqual: @"X"]) {
        return @"X";
        
    } else if ([self.board[0][2] isEqual: @"X"] && [self.board[1][1] isEqual: @"X"] && [self.board[2][0] isEqual: @"X"]) {
        return @"X";
        
    } else if ([self.board[0][0] isEqual: @"X"] && [self.board[1][0] isEqual: @"X"] && [self.board[2][0] isEqual: @"X"]) {
        return @"X";
        
    }
      else if ([self.board[0][1] isEqual: @"X"] && [self.board[1][1] isEqual: @"X"] && [self.board[2][1] isEqual: @"X"]) {
        return @"X";
    }
      else if ([self.board[0][2] isEqual: @"X"] && [self.board[1][2] isEqual: @"X"] && [self.board[2][2] isEqual: @"X"]) {
        return @"X";
      
    } else if ([self.board[0][0] isEqual: @"O"] && [self.board[1][0] isEqual: @"O"] && [self.board[2][0] isEqual: @"O"]) {
        return @"O";
        
    }
      else if ([self.board[0][1] isEqual: @"O"] && [self.board[1][1] isEqual: @"O"] && [self.board[2][1] isEqual: @"O"]) {
        return @"O";
    }
      else if ([self.board[0][2] isEqual: @"O"] && [self.board[1][2] isEqual: @"O"] && [self.board[2][2] isEqual: @"O"]) {
        return @"O";
          
    } else if ([self.board[0]  isEqual: @[@"O", @"O", @"O"]]){
        return @"O";
        
    } else if ([self.board[1]  isEqual: @[@"O", @"O", @"O"]]){
        return @"O";
        
    } else if ([self.board[2]  isEqual: @[@"O", @"O", @"O"]]){
        return @"O";
        
    } else if ([self.board[0][0] isEqual: @"O"] && [self.board[1][1] isEqual: @"O"] && [self.board[2][2] isEqual: @"O"]) {
        return @"O";
        
    } else if ([self.board[0][2] isEqual: @"O"] && [self.board[1][1] isEqual: @"O"] && [self.board[2][0] isEqual: @"O"]) {
        return @"O";
        
    } else {
        
    return @"";
    }
}

-(BOOL)isADraw
{
    if ([self.board[0] containsObject:@""] ||
        [self.board[1] containsObject:@""] ||
        [self.board[2] containsObject:@""] )
         {
             return NO;
         } else {
    
    // 1. check if there is a winning player
        // we already have a method that will tell us this
        // if there's NOT a winner
    // 2. check if there are any empty spaces remaining
        // how can we iterate over our board to see if there are any empty spaces remaining
    
    
    return YES;
         }
}

@end
