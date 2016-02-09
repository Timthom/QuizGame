//
//  QuizGameRandomGenerator.h
//  Labb2
//
//  Created by Thomas on 2016-02-04.
//  Copyright © 2016 Thomas Månsson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <GamePlayKit/GamePlayKit.h>
@import GameplayKit;

@interface QuizGameRandomGenerator : NSObject
@property(nonatomic) NSString* generateQuestion;
@property(nonatomic) NSString* generateAnswer1;
@property(nonatomic) NSString* generateAnswer2;
@property(nonatomic) NSString* generateAnswer3;
@property(nonatomic) NSString* generateAnswer4;
@property(nonatomic) NSString* generateRightAnswer;
@end
