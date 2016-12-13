//
//  ViewController.m
//  RakeshDemoApp
//
//  Created by Satish Garlapati on 12/7/16.
//  Copyright © 2016 Satish Garlapati. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@property(nonatomic,strong) UIButton * someBtn;
@property(nonatomic,strong) UITextField * someField;
@property(nonatomic,strong) UILabel * someLabel;
@property(nonatomic,strong) UISwitch * swt;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self callMeMethod];
    
    self.view.backgroundColor = [UIColor purpleColor];
    
    _someBtn = [[UIButton alloc]init];
    _someBtn.frame = CGRectMake(10, 10, 100, 100);
    [_someBtn setTitle:@"Click me" forState:UIControlStateNormal];
    [_someBtn addTarget:self action:@selector(BtnClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_someBtn];
    
    int z = [self whatEverYouWant:8];
    NSLog(@"%i",z);
    
    
    _someField = [[UITextField alloc]init];
    _someField.frame = CGRectMake(10, 120, 100, 100);
    _someField.backgroundColor = [UIColor whiteColor];
    [_someField addTarget:self action:@selector(textMethod) forControlEvents:UIControlEventEditingDidEnd];
    [self.view addSubview:_someField];
    
    _someLabel = [[UILabel alloc]init];
    _someLabel.text = @"Its a Label";
    _someLabel.frame = CGRectMake(10, 240, 100, 100);
    _someLabel.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_someLabel];
    
    _swt = [[UISwitch alloc]initWithFrame:CGRectMake(130, 60, 30, 20)];
    [_swt addTarget:self action:@selector(switchMethod) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_swt];
    
}

-(void)switchMethod {
    if(_swt.on == YES){
        self.view.backgroundColor = [UIColor grayColor];
    }else {
    self.view.backgroundColor = [UIColor orangeColor];
    }
    
}

-(void) textMethod {
    self.view.backgroundColor = [UIColor yellowColor];

    NSLog(@"editing ended");
    
}

-(int) whatEverYouWant: (int) localName {
    return localName*30;
}


-(void) BtnClicked{
    
    _someField.resignFirstResponder;
//    if (self.view.backgroundColor == [UIColor redColor]) {
//        self.view.backgroundColor = [UIColor blueColor];
//    }else
//    {
//        self.view.backgroundColor = [UIColor redColor];
//    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)callMeMethod{
    
    
    NSString * name = @"Rakesh";
    NSLog(@"%@", name);
    [self secondMethod];
    
}

-(void)secondMethod {
    
    
    
    
}

@end
