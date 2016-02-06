//
//  QuizGameRandomGenerator.m
//  Labb2
//
//  Created by Thomas on 2016-02-04.
//  Copyright © 2016 Thomas Månsson. All rights reserved.
//

#import "QuizGameRandomGenerator.h"
@interface QuizGameRandomGenerator()

@property(nonatomic) NSArray *question1;
@property(nonatomic) NSArray *question2;
@property(nonatomic) NSArray *question3;
@property(nonatomic) NSArray *question4;
@property(nonatomic) NSArray *question5;
@property(nonatomic) NSArray *question6;
@property(nonatomic) NSArray *question7;
@property(nonatomic) NSArray *question8;
@property(nonatomic) NSArray *question9;
@property(nonatomic) NSArray *question10;
@property(nonatomic) NSArray *question11;
@property(nonatomic) NSArray *question12;
@property(nonatomic) NSArray *question13;
@property(nonatomic) NSArray *question14;
@property(nonatomic) NSArray *question15;
@property(nonatomic) NSMutableArray *allQuestions;
@property(nonatomic) NSString *randomElement;
@property(nonatomic) NSUInteger idRandom;
//@property(nonatomic) NSUInteger idNewRandom;




@end

@implementation QuizGameRandomGenerator

-(instancetype) init {
    self = [super init];
    if(self) {

       
        self.question1 = [[NSArray alloc] initWithObjects:@"Who is the King of Sweden?", @"Carl X Gustav", @"Carl XII Gustav", @"Carl XVI Gustav", @"Carl IX Gustav", @"Carl XVI Gustav", nil ];
       
        self.question2 = [[NSArray alloc] initWithObjects: @"What programlangues is this app written in?", @"Java", @"C#", @"Objectiv-C", @"Basic", @"Objectiv-C", nil];
       
        self.question3 = [[NSArray alloc] initWithObjects: @"Who was the eldest of the Marx Brothers?", @"Chico", @"Picko", @"Groucho", @"Harpo", @"Chico", nil];
        
        self.question4 = [[NSArray alloc] initWithObjects: @"Who painted The Water Lily Pool?", @"Picasso", @"Claude Monet", @"Van Gough", @"Rembrant", @"Claude Monet", nil];
        
        self.question5 = [[NSArray alloc] initWithObjects: @"A couple celebrating their crystal wedding anniversary have been married for how many years?", @"25", @"15", @"10", @"35", @" 15", nil];
        
        self.question6 = [[NSArray alloc] initWithObjects: @"Who wrote the book Catch-22?", @"Leonard Coen", @"Charles Dickens", @"Franz Kafka", @"Joseph Heller", @"Joseph Heller", nil];
        
        self.question7 = [[NSArray alloc] initWithObjects: @"In which year did Henry VIII become King of England?", @"1509", @"1508", @"1511", @"1510", @"1509", nil];
        
        self.question8 = [[NSArray alloc] initWithObjects: @"Madame de Pompadour was the mistress of which French King?", @"Louis XVI", @"Louis XV", @"Louis XIV", @"Louis XVII", @"Louis XV", nil];
        
        self.question9 = [[NSArray alloc] initWithObjects: @"Which country is known as the Pearl of Africa?", @"Egypt", @"Senegal", @"Tanzania", @"Uganda", @"Uganda", nil];
        
        self.question10 = [[NSArray alloc] initWithObjects: @"In the song, Heartbreak Hotel is on which street?", @"Justin Street", @"Lonely Street", @"Main Street", @"Baker Street", @"Lonely Street", nil];
        
        self.question11 = [[NSArray alloc] initWithObjects: @"For which fruit is the US state of Georgia famous?", @"Lime", @"Apple", @"Orange", @"Peach", @"Peach", nil];
        
        self.question12 = [[NSArray alloc] initWithObjects: @"Who captained Jules Verne's submarine Nautilus?", @"Captain Nemo", @"Captain Ahab", @"Captain Barnes", @"Captain John", @"Captain Nemo", nil];
        
        self.question13 = [[NSArray alloc] initWithObjects: @"Which guitarist is known as Slowhand?", @"Buddy Guy", @"Mike Bloomfield", @"Eric Clapton", @"Jeff Beck", @"Eric Clapton", nil];
        
        self.question14 = [[NSArray alloc] initWithObjects: @"What is infant whale commonly called?", @"Cub", @"Lamb", @"Puppy", @"Calf", @"Calf", nil];
        
        self.question15 = [[NSArray alloc] initWithObjects: @"How old is a horse when it changes from a filly to a mare?", @"5", @"4", @"3", @"2", @"4", nil];
        
        self.allQuestions = [[NSMutableArray alloc] initWithObjects:_question1, _question2, _question3, _question4, _question5, _question6, _question7, _question8, _question9, _question10, _question11, _question12, _question13, _question14, _question15, nil];

        
    }
    return self;
}




/*-(NSString*)randomElement:(NSArray*)allQuestions {
    
    return allQuestions[arc4random() %allQuestions.count];
}
*/


//Variable for random id to allQuestions array
NSUInteger idRandom;
//NSUInteger idNewRandom;
//Generate question
-(NSString*)generateQuestion {
    idRandom = self.allQuestions.count-1;
    
        while(idRandom) {
            
                [_allQuestions exchangeObjectAtIndex:idRandom
                                   withObjectAtIndex:arc4random_uniform(idRandom)];
                idRandom--;
            }
   
    NSString *question = [[_allQuestions objectAtIndex:idRandom] objectAtIndex:0] ;
    return [NSString stringWithFormat:@" %@ ", question];
    
}

//Generate answer1
-(NSString*)generateAnswer1 {
    NSString *answer1 = [[_allQuestions objectAtIndex:idRandom] objectAtIndex:1];
    return [NSString stringWithFormat:@" %@ ", answer1];
}

//Generate answer2
-(NSString*)generateAnswer2 {
    NSString *answer2 = [[_allQuestions objectAtIndex:idRandom] objectAtIndex:2] ;
    return [NSString stringWithFormat:@" %@ ", answer2];
}

//Generate answer3
-(NSString*)generateAnswer3 {
    NSString *answer3 = [[_allQuestions objectAtIndex:idRandom] objectAtIndex:3] ;
    return [NSString stringWithFormat:@" %@ ", answer3];
}

//Generate answer4
-(NSString*)generateAnswer4 {
    NSString *answer4 = [[_allQuestions objectAtIndex:idRandom] objectAtIndex:4] ;
    return [NSString stringWithFormat:@" %@ ", answer4];
}
//Generate rightAnswer
-(NSString*)generateRightAnswer {
    NSString *rightAnswer = [[_allQuestions objectAtIndex:idRandom] objectAtIndex:5] ;
    return [NSString stringWithFormat:@" %@ ", rightAnswer];
}
@end
