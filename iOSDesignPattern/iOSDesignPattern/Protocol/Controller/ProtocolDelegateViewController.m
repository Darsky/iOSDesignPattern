//
//  ProtocolViewController.m
//  iOSDesignPattern
//
//  Created by Darsky on 2017/12/14.
//  Copyright © 2017年 Darsky. All rights reserved.
//

#import "ProtocolDelegateViewController.h"
#import "ProtocolViewController.h"

@interface ProtocolDelegateViewController ()
{
    __weak IBOutlet UILabel *_desLabel;
}

@end

@implementation ProtocolDelegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - ProtocolDelegate Method

- (void)optionalProtocolFunc:(NSString *)string
{
    _desLabel.text = string;
}




#pragma mark - StartDemo

- (IBAction)didStartDemoButtonTouch:(id)sender
{
    ProtocolViewController *viewController = nil;
    viewController = [[ProtocolViewController alloc] initWithNibName:@"ProtocolViewController"
                                                              bundle:nil];
    viewController.delegate = self;
    [self.navigationController pushViewController:viewController
                                         animated:YES];
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
