//
//  WSCommon.h
//  GridViewExample
//
//  Created by Giuseppe Morana on 01/02/15.
//  Copyright (c) 2015 Giuseppe Morana. All rights reserved.
//
//  Contains data structures and utility functions used throughout the app

#import <UIKit/UIKit.h>

typedef struct {
    NSUInteger row;
    NSUInteger column;
} WSGridPosition;

typedef struct {
    CGFloat red;
    CGFloat green;
    CGFloat blue;
} rgbColor;

/**
 * Used while drawing marks
 */
typedef struct {
    CGFloat size;
    CGFloat opacity;
    rgbColor rgb;
} WSBrush;

typedef enum {
    WSGameLevelEasy,    // grid = 8x8, words = 5
    WSGameLevelMedium,  // grid = 10x10, words = 6
    WSGameLevelHard     // grid = 12x12, words = 9
} WSGameLevel;

BOOL areEqualsPosition(WSGridPosition firstPosition, WSGridPosition secondPosition);
BOOL areEqualsSizes(CGSize firstSize, CGSize secondSize);

WSGridPosition WSMakeGridPosition(NSUInteger row, NSUInteger column);

NSString *NSStringFromPosition(WSGridPosition position);

#define WSGridPositionNotFound WSMakeGridPosition(NSUIntegerMax, NSUIntegerMax)
