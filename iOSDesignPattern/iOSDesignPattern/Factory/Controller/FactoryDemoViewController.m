//
//  FactoryDemoViewController.m
//  iOSDesignPattern
//
//  Created by Darsky on 2017/12/16.
//  Copyright © 2017年 Darsky. All rights reserved.
//

#import "FactoryDemoViewController.h"
#import "ClotheFactory.h"
#import "ShirtFactory.h"
#import "TshirtFactory.h"

@interface FactoryDemoViewController ()
{
    __weak IBOutlet UITextView *_logTextView;
}

@end

@implementation FactoryDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    _logTextView.layer.masksToBounds = YES;
    _logTextView.layer.cornerRadius  = 10;
    _logTextView.layer.borderWidth   = 1;
    _logTextView.layer.borderColor   = [UIColor colorWithRed:230/255.0
                                                       green:230/255.0
                                                        blue:230/255.0
                                                       alpha:1.0].CGColor;
}

#pragma mark - 总厂 Method

- (IBAction)didProduceClotheButtonTouch:(id)sender
{
    Clothe *clothe = [ClotheFactory produceProduct];
    
    NSMutableString *string = [NSMutableString stringWithString:_logTextView.text?:@""];
    [string appendFormat:@"生产了一件产品【%@】\n",clothe.productName];
    _logTextView.text = string;
}


#pragma mark - 衬衣分厂 Method

- (IBAction)didShirtFactoryProduceButtonTouch:(id)sender
{
    Clothe *clothe = [ShirtFactory produceProduct];
    
    NSMutableString *string = [NSMutableString stringWithString:_logTextView.text?:@""];
    [string appendFormat:@"生产了一件产品【%@】\n",clothe.productName];
    _logTextView.text = string;
}
#pragma mark - T恤分厂 Method

- (IBAction)didTshirtFactoryProduceButtonTouch:(id)sender {
    Clothe *clothe = [TshirtFactory produceProduct];
    
    NSMutableString *string = [NSMutableString stringWithString:_logTextView.text?:@""];
    [string appendFormat:@"生产了一件产品【%@】\n",clothe.productName];
    _logTextView.text = string;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
