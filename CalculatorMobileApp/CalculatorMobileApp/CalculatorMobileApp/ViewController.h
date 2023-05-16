//
//  ViewController.h
//  CalculatorMobileApp
//
//  Created by MAC on 18/04/2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)enterNum:(UIButton *)sender;
- (IBAction)divButton:(UIButton *)sender;
- (IBAction)mulButton:(UIButton *)sender;
- (IBAction)minusButton:(UIButton *)sender;
- (IBAction)plusButton:(UIButton *)sender;
- (IBAction)equalButton:(UIButton *)sender;
- (IBAction)clearButton:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *addOutlet;
@property (weak, nonatomic) IBOutlet UILabel *displayLabel;
- (IBAction)percentButton:(UIButton *)sender;
- (IBAction)inversionButton:(UIButton *)sender;

@property NSString * displayStr;
@property double first;
@property double numOne;
@property double numTwo;
@property bool flag;
@property double num;
@property int operand;
@property double result;
@property double current;


@end

