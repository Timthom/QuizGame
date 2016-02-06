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
@property (weak, nonatomic) IBOutlet UIButton *nextQuestionButtom;
@property (weak, nonatomic) IBOutlet UIButton *answerButtomA;

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
    [[self nextQuestionButtom] setTitle:@"Touch to begin" forState:UIControlStateNormal];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)startGameButtom:(id)sender {
     NSLog(@"Buttom changed");
    
    self.questionTextField.text = [self.quizGameGenerator generateQuestion];
    
    self.answerLabelA.text = [self.quizGameGenerator generateAnswer1];
    self.answerLabelB.text = [self.quizGameGenerator generateAnswer2];
    self.answerLabelC.text = [self.quizGameGenerator generateAnswer3];
    self.answerLabelD.text = [self.quizGameGenerator generateAnswer4];
    
   // _nextQuestionButtom.hidden = YES;
    [self.nextQuestionButtom  setTitle:@"Next question" forState:UIControlStateNormal];

    NSLog(@"%@", self.questionTextField.text);
}

- (IBAction)answerButtomA:(id)sender {
    [self.answerButtomA setTitle: [self.quizGameGenerator generateAnswer1] forState: UIControlStateNormal];
}

- (IBAction)answerButtomB:(id)sender {
    
}

- (IBAction)answerButtomC:(id)sender {
   
}

- (IBAction)answerButtomD:(id)sender {
    
}

@end
