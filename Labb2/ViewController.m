//
//  ViewController.m
//  Labb2
//
//  Created by Thomas on 2016-02-03.
//  Copyright © 2016 Thomas Månsson. All rights reserved.
//

#import "ViewController.h"
#import "QuizGameRandomGenerator.h"

@interface ViewController ()
@property (strong, nonatomic) QuizGameRandomGenerator *quizGameGenerator;

@property (weak, nonatomic) NSString* generateRightAnswer;
@property (weak, nonatomic) NSString* generateAnswer4;
@property (weak, nonatomic) NSString* generateAnswer3;
@property (weak, nonatomic) NSString* generateAnswer2;
@property (weak, nonatomic) NSString* generateAnswer1;
@property (weak, nonatomic) NSString* generateQuestion;


@property (weak, nonatomic) IBOutlet UITextView *questionTextField;
@property (weak, nonatomic) IBOutlet UILabel *answerLabelA;
@property (weak, nonatomic) IBOutlet UILabel *answerLabelB;
@property (weak, nonatomic) IBOutlet UILabel *answerLabelC;
@property (weak, nonatomic) IBOutlet UILabel *answerLabelD;
@property (weak, nonatomic) IBOutlet UILabel *rightAnswerLabel;

@property (weak, nonatomic) IBOutlet UIButton *startGameButtom;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *resetGameButtom;
@property (weak, nonatomic) IBOutlet UIButton *answerButtomA;
@property (weak, nonatomic) IBOutlet UIButton *answerButtomB;
@property (weak, nonatomic) IBOutlet UIButton *answerButtomC;
@property (weak, nonatomic) IBOutlet UIButton *answerButtomD;

@property (nonatomic) int scoreCount;
@property (nonatomic) int questionCount;

@end

@implementation ViewController

//Lazy init
-(QuizGameRandomGenerator*)quizGameGenerator {
    if(!_quizGameGenerator) {
        _quizGameGenerator = [[QuizGameRandomGenerator alloc] init];
    }
    return _quizGameGenerator;
}

- (void)viewDidLoad {
    _resetGameButtom.hidden = YES;
    _rightAnswerLabel.hidden = YES;
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//Set question and answers to UI
-(void)updateUI {
    self.questionTextField.text = [self.quizGameGenerator generateQuestion];
    self.answerLabelA.text = [self.quizGameGenerator generateAnswer1];
    self.answerLabelB.text = [self.quizGameGenerator generateAnswer2];
    self.answerLabelC.text = [self.quizGameGenerator generateAnswer3];
    self.answerLabelD.text = [self.quizGameGenerator generateAnswer4];
    self.rightAnswerLabel.text = [self.quizGameGenerator generateRightAnswer];
}

-(void)checkRightAnswer {
   
 /*if([self.answerLabelA.text isEqualToString: self.rightAnswerLabel.text ]  )
 {
 self.scoreCount++;
 _rightAnswerLabel.hidden = NO;
 self.rightAnswerLabel.text = [self.quizGameGenerator generateRightAnswer];
 [self.rightAnswerLabel setBackgroundColor:[UIColor greenColor]];
 
 } else {
 _rightAnswerLabel.hidden = NO;
 self.rightAnswerLabel.text = [NSString stringWithFormat:@"Wrong answer!"];
 [self.rightAnswerLabel setBackgroundColor:[UIColor redColor]];
 }*/
 
}

-(void)setScoreCount:(int)scoreCount
{
    _scoreCount = scoreCount;
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d", self.scoreCount];
}

-(void)setQuestionCount:(int)questionCount {
    _questionCount = questionCount;
    if(_questionCount == 5) {
        _startGameButtom.hidden = YES;
        _resetGameButtom.hidden = NO;
        [_answerButtomA  setEnabled:NO];
        [_answerButtomB  setEnabled:NO];
        [_answerButtomC  setEnabled:NO];
        [_answerButtomD  setEnabled:NO];

    }
   
}

- (IBAction)startGameButtom:(id)sender {
    [self updateUI];
    
    _rightAnswerLabel.hidden = YES;
   
    [self.startGameButtom  setTitle:@"Next question" forState:UIControlStateNormal];
    [_answerButtomA  setEnabled:YES];
    [_answerButtomB  setEnabled:YES];
    [_answerButtomC  setEnabled:YES];
    [_answerButtomD  setEnabled:YES];
    

    
    NSLog(@"%@", self.questionTextField.text);
    NSLog(@"%@", self.rightAnswerLabel.text);
    
    
}


- (IBAction)answerButtomA:(id)sender {
   // [self.answerButtomA setTitle: [self.quizGameGenerator generateAnswer1] forState: UIControlStateNormal];
    //[self checkRightAnswer];
   self.questionCount++;
    if([self.answerLabelA.text  isEqualToString: self.rightAnswerLabel.text ] ) {
        self.scoreCount++;
        _rightAnswerLabel.hidden = NO;
        self.rightAnswerLabel.text = [self.quizGameGenerator generateRightAnswer];
        [self.rightAnswerLabel setBackgroundColor:[UIColor greenColor]];
        
    } else {
        _rightAnswerLabel.hidden = NO;
        self.rightAnswerLabel.text = [NSString stringWithFormat:@"Wrong answer!"];
        [self.rightAnswerLabel setBackgroundColor:[UIColor redColor]];
    }
    
    [_answerButtomB  setEnabled:NO];
    [_answerButtomC  setEnabled:NO];
    [_answerButtomD  setEnabled:NO];
}

- (IBAction)answerButtomB:(id)sender {
   // [self.answerButtomB setTitle: [self.quizGameGenerator generateAnswer2] forState: UIControlStateNormal];
   // [self checkRightAnswer];
   self.questionCount++;
   if([self.answerLabelB.text  isEqualToString: self.rightAnswerLabel.text ] ) {
        self.scoreCount++;
        _rightAnswerLabel.hidden = NO;
        self.rightAnswerLabel.text = [self.quizGameGenerator generateRightAnswer];
        [self.rightAnswerLabel setBackgroundColor:[UIColor greenColor]];
        
    } else {
        _rightAnswerLabel.hidden = NO;
        self.rightAnswerLabel.text = [NSString stringWithFormat:@"Wrong answer!"];
        [self.rightAnswerLabel setBackgroundColor:[UIColor redColor]];
    }
    [_answerButtomA  setEnabled:NO];
    [_answerButtomC  setEnabled:NO];
    [_answerButtomD  setEnabled:NO];
    
}

- (IBAction)answerButtomC:(id)sender {
  //[self.answerButtomC setTitle: [self.quizGameGenerator generateAnswer3] forState: UIControlStateNormal];
  //[self checkRightAnswer];
    self.questionCount++;
    if([self.answerLabelC.text  isEqualToString: self.rightAnswerLabel.text ] ) {
        self.scoreCount++;
        _rightAnswerLabel.hidden = NO;
        self.rightAnswerLabel.text = [self.quizGameGenerator generateRightAnswer];
        [self.rightAnswerLabel setBackgroundColor:[UIColor greenColor]];
        
    } else {
        _rightAnswerLabel.hidden = NO;
        self.rightAnswerLabel.text = [NSString stringWithFormat:@"Wrong answer!"];
        [self.rightAnswerLabel setBackgroundColor:[UIColor redColor]];
    }
    [_answerButtomA  setEnabled:NO];
    [_answerButtomB  setEnabled:NO];
    [_answerButtomD  setEnabled:NO];

}

- (IBAction)answerButtomD:(id)sender {
   //[self.answerButtomD setTitle: [self.quizGameGenerator generateAnswer4] forState: UIControlStateNormal];
   // [self checkRightAnswer];
    self.questionCount++;
    if( [self.answerLabelD.text  isEqualToString: self.rightAnswerLabel.text ] ) {
        self.scoreCount++;
        _rightAnswerLabel.hidden = NO;
        self.rightAnswerLabel.text = [self.quizGameGenerator generateRightAnswer];
        [self.rightAnswerLabel setBackgroundColor:[UIColor greenColor]];
        
    } else {
        _rightAnswerLabel.hidden = NO;
        self.rightAnswerLabel.text = [NSString stringWithFormat:@"Wrong answer!"];
        [self.rightAnswerLabel setBackgroundColor:[UIColor redColor]];
    }
    [_answerButtomA  setEnabled:NO];
    [_answerButtomB  setEnabled:NO];
    [_answerButtomC  setEnabled:NO];
    

}
- (IBAction)resetGameButtom:(id)sender {
    self.scoreCount = 0;
    self.questionCount = 0;
    self.quizGameGenerator = nil;
    self.questionTextField.text = nil;
    self.answerLabelA.text = nil;
    self.answerLabelB.text = nil;
    self.answerLabelC.text = nil;
    self.answerLabelD.text = nil;
    self.rightAnswerLabel.text = nil;
    _rightAnswerLabel.hidden = YES;
    [self.startGameButtom  setTitle:@"Start!" forState:UIControlStateNormal];
    _startGameButtom.hidden = NO;
    _resetGameButtom.hidden = YES;
    [_answerButtomA  setEnabled:YES];
    [_answerButtomB  setEnabled:YES];
    [_answerButtomC  setEnabled:YES];
    [_answerButtomD  setEnabled:YES];
    self.questionTextField.text = [NSString stringWithFormat:@"Hit Start Button! :) "];
    //[self updateUI];
}

@end
