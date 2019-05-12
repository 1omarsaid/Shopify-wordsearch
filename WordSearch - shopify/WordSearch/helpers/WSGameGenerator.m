//
//  WSGameGenerator.m
//  GridViewExample
//
//  Created by Giuseppe Morana on 02/02/15.
//  Copyright (c) 2015 Giuseppe Morana. All rights reserved.
//

#import "WSGameGenerator.h"

@interface WSGameGenerator() {
    WSCharsMatrix *_generatedCharsGrid;
    WSWordList *_generatedWordList;
}

@end

@implementation WSGameGenerator

+ (instancetype)generatorWithWordsSet:(NSSet *)wordsSet andGameLevel:(WSGameLevel)gameLevel {
    return [[WSGameGenerator alloc] initWithWordsSet:wordsSet andGameLevel:gameLevel];
}

- (instancetype)initWithWordsSet:(NSSet *)wordsSet andGameLevel:(WSGameLevel)gameLevel {
    if (self = [super init]) {
        self.wordsSet = wordsSet;
        self.gameLevel = gameLevel;
    }
    return self;
}

- (WSCharsMatrix *)charsGrid {
    return _generatedCharsGrid;
}

- (WSWordList *)wordList {
    return _generatedWordList;
}

// fake! demo purpose only
- (void)generate {
    
    switch (self.gameLevel) {
        case WSGameLevelEasy:
            [self fakeGeneration_easy];
            break;
        case WSGameLevelHard:
            [self fakeGeneration_hard];
            break;
        default:
            [self fakeGeneration_medium];
            break;
    }
}

- (void)fakeGeneration_easy {
    
    NSArray *rows = @[@"A V E S C A M F",
                      @"F A D O Z T O I",
                      @"N R Y K E F N N",
                      @"I I A L C I A F",
                      @"L A O V Z W C A",
                      @"T B U T A S H M",
                      @"O L T D T J E E",
                      @"K E M O B I L E"];
    
    _generatedCharsGrid = [WSCharsMatrix matrixWithArrayOfStrings:rows];
    _generatedWordList = [WSWordList list];
    
    WSWord *word;
    
    word = [WSWord wordWithText:@"SWIFT"
              withStartPosition:WSMakeGridPosition(5, 5)
                withEndPosition:WSMakeGridPosition(1, 5)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"KOTLIN"
              withStartPosition:WSMakeGridPosition(7, 0)
                withEndPosition:WSMakeGridPosition(2, 0)];
    [_generatedWordList addWord:word];
    
    
    word = [WSWord wordWithText:@"VARIABLE"
              withStartPosition:WSMakeGridPosition(0, 1)
                withEndPosition:WSMakeGridPosition(7, 1)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"MOBILE"
              withStartPosition:WSMakeGridPosition(7, 2)
                withEndPosition:WSMakeGridPosition(7, 7)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"JAVA"
              withStartPosition:WSMakeGridPosition(6, 5)
                withEndPosition:WSMakeGridPosition(3, 2)];
    [_generatedWordList addWord:word];
    

    
}

- (void)fakeGeneration_medium {
    
    NSArray *rows = @[@"S W I F T O M A R C",
                      @"V M O B I L E S E R",
                      @"A Q L Z R T I V E S",
                      @"R T G L A M I N T J",
                      @"I R T I Q T O O N A",
                      @"A L G I C S R O K V",
                      @"B A O E R O E R Y A",
                      @"L I J E N A A U S E",
                      @"E B Y T A S R M R W",
                      @"O R O G N I L T O K"];
    
    _generatedCharsGrid = [WSCharsMatrix matrixWithArrayOfStrings:rows];
    
    _generatedWordList = [WSWordList list];
    
    WSWord *word;
    
    word = [WSWord wordWithText:@"SWIFT"
              withStartPosition:WSMakeGridPosition(0, 0)
                withEndPosition:WSMakeGridPosition(0, 4)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"OMAR"
              withStartPosition:WSMakeGridPosition(0, 5)
                withEndPosition:WSMakeGridPosition(0, 8)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"RYERSON"
              withStartPosition:WSMakeGridPosition(9, 1)
                withEndPosition:WSMakeGridPosition(3, 7)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"TORONTO"
              withStartPosition:WSMakeGridPosition(3, 8)
                withEndPosition:WSMakeGridPosition(9, 2)];
    [_generatedWordList addWord:word];
    
    
    word = [WSWord wordWithText:@"KOTLIN"
              withStartPosition:WSMakeGridPosition(9, 9)
                withEndPosition:WSMakeGridPosition(9, 4)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"OBJECTIVEC"
              withStartPosition:WSMakeGridPosition(9, 0)
                withEndPosition:WSMakeGridPosition(0, 9)];
    [_generatedWordList addWord:word];
    
    
    word = [WSWord wordWithText:@"VARIABLE"
              withStartPosition:WSMakeGridPosition(1, 0)
                withEndPosition:WSMakeGridPosition(8, 0)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"MOBILE"
              withStartPosition:WSMakeGridPosition(1, 1)
                withEndPosition:WSMakeGridPosition(1, 6)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"JAVA"
              withStartPosition:WSMakeGridPosition(3, 9)
                withEndPosition:WSMakeGridPosition(6, 9)];
    [_generatedWordList addWord:word];
    
    

}

- (void)fakeGeneration_hard {
    
    
    NSArray *rows = @[@"S W I F T K O T L I N V",
                      @"O P L E A S E S R R A A",
                      @"B Q G I V E I M E S C R",
                      @"J I N T E R N S H I P I",
                      @"E R T I Q E D G N C C A",
                      @"C L G I T E G O K U A B",
                      @"T A O N R E E R Y R S L",
                      @"I I O G T A A U S E J E",
                      @"V C L T A S R M R W D J",
                      @"E I I G B O R E N W V A",
                      @"C C L T B O R E R T A V",
                      @"M O B I L E R E R T A A"];
    
    _generatedCharsGrid = [WSCharsMatrix matrixWithArrayOfStrings:rows];
    
    _generatedWordList = [WSWordList list];
    
    WSWord *word;

    word = [WSWord wordWithText:@"SWIFT"
              withStartPosition:WSMakeGridPosition(0, 0)
                withEndPosition:WSMakeGridPosition(0, 4)];
    [_generatedWordList addWord:word];

    word = [WSWord wordWithText:@"KOTLIN"
              withStartPosition:WSMakeGridPosition(0, 5)
                withEndPosition:WSMakeGridPosition(0, 10)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"OBJECTIVEC"
              withStartPosition:WSMakeGridPosition(1, 0)
                withEndPosition:WSMakeGridPosition(10, 0)];
    [_generatedWordList addWord:word];
    
    
    word = [WSWord wordWithText:@"JAVA"
              withStartPosition:WSMakeGridPosition(8, 11)
                withEndPosition:WSMakeGridPosition(11, 11)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"MOBILE"
              withStartPosition:WSMakeGridPosition(11, 0)
                withEndPosition:WSMakeGridPosition(11, 5)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"PLEASE"
              withStartPosition:WSMakeGridPosition(1, 1)
                withEndPosition:WSMakeGridPosition(1, 6)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"GIVE"
              withStartPosition:WSMakeGridPosition(2, 2)
                withEndPosition:WSMakeGridPosition(2, 5)];
    [_generatedWordList addWord:word];
    
    
    word = [WSWord wordWithText:@"VARIABLE"
              withStartPosition:WSMakeGridPosition(0, 11)
                withEndPosition:WSMakeGridPosition(7, 11)];
    [_generatedWordList addWord:word];
    
    word = [WSWord wordWithText:@"INTERNSHIP"
              withStartPosition:WSMakeGridPosition(3, 1)
                withEndPosition:WSMakeGridPosition(3, 10)];
    [_generatedWordList addWord:word];
    
}

@end
