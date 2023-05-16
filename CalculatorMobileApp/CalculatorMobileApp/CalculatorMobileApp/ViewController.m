//
//  ViewController.m
//  CalculatorMobileApp
//
//  Created by MAC on 18/04/2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _displayStr=@"";
    _displayLabel.text=_displayStr;
    _numOne=0;
    _numTwo=0;
    _num=0;
    _flag=NO;
    _operand=0;
    _result=0;
    _current=0;
    _first=0;
    
}


- (IBAction)clearButton:(UIButton *)sender {
    _displayStr=@"";
    _displayLabel.text=_displayStr;
    _numOne=0;
    _numTwo=0;
    _num=0;
    _flag=NO;
    _operand=0;
    _result=0;
    _current=0;
    _first=0;
    
}

- (IBAction)equalButton:(UIButton *)sender {
    _displayStr=@"";
    _flag=NO;
    switch(_operand){
        case 1:
            _result=_first+_numTwo;
            _displayStr=[NSString stringWithFormat:@"%g", _result];
            _displayLabel.text=_displayStr;
            _current=_result;
            _first=_result;
            break;
        case 2:
            _result=_first-_numTwo;
            _displayStr=[NSString stringWithFormat:@"%g", _result];
            _displayLabel.text=_displayStr;
            _current=_result;
            _first=_result;
            break;
        case 3:
            _result=_first*_numTwo;
            _displayStr=[NSString stringWithFormat:@"%g", _result];
            _displayLabel.text=_displayStr;
            _current=_result;
            _first=_result;
            break;
        case 4:
            if(_numTwo!=0){
                _result=_first/_numTwo;
                _displayStr=[NSString stringWithFormat:@"%g", _result];
                _displayLabel.text=_displayStr;
                _current=_result;
                _first=_result;
            }else{
                _displayStr=@"Error";
                _displayLabel.text=_displayStr;
            }
            
            break;
            
            
            
    }
    
}

- (IBAction)plusButton:(UIButton *)sender {
    _flag=YES;
    _operand=1;
    _displayStr=@"";
   

    
   
}

- (IBAction)minusButton:(UIButton *)sender {
    _flag=YES;
    _operand=2;
    _displayStr=@"";
  
}

- (IBAction)mulButton:(UIButton *)sender {
    _flag=YES;
    _operand=3;
    _displayStr=@"";
  
}

- (IBAction)divButton:(UIButton *)sender {
    _flag=YES;
    _operand=4;
    _displayStr=@"";
   
}

- (IBAction)enterNum:(UIButton *)sender {
    if(!_flag){
        if([sender tag]!=10){
            _num=[sender tag];
            _displayStr=[_displayStr stringByAppendingString:[NSString stringWithFormat:@"%g", _num]];
        }
        else{
            _displayStr=[_displayStr stringByAppendingString:@"."];
        }
        _numOne=[_displayStr floatValue];
        _current=_numOne;
        _first=_numOne;
        _displayLabel.text=_displayStr;
    }
    else{
       
        
        
        
        if([sender tag]!=10){
            _num=[sender tag];
            _displayStr=[_displayStr stringByAppendingString:[NSString stringWithFormat:@"%g", _num]];}
        else{
            _displayStr=[_displayStr stringByAppendingString:@"."];
        }
        _numTwo=[_displayStr floatValue];
        _current=_numTwo;
        _displayLabel.text=_displayStr;
        
    }
    
    
}
- (IBAction)inversionButton:(UIButton *)sender {
    _current=-_current;
    _displayStr=[NSString stringWithFormat:@"%g", _current];
    _displayLabel.text=_displayStr;
    if(_numTwo){
        _numTwo=_current;
    }
    else{
        _numOne=_current;
    }
    
}

- (IBAction)percentButton:(UIButton *)sender {
    _current=_current/100;
    _displayStr=[NSString stringWithFormat:@"%g", _current];
    _displayLabel.text=_displayStr;
    if(_numTwo){
        _numTwo=_current;
    }
    else{
        _numOne=_current;
    }
}


@end
